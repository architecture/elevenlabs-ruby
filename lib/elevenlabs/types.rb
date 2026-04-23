require "json"

module ElevenLabs
  # Optional runtime validator for nested request bodies whose shape the
  # gem otherwise treats as an opaque Hash (`workflow`, `conversation_config`,
  # `platform_settings`, etc.). Backed by `lib/elevenlabs/types.json`, which
  # is generated from the upstream Python SDK's Pydantic models.
  #
  # Opt-in: not wired into the HTTP path. Call explicitly before a request
  # when you want to catch a missing `label` or an unknown node `type`
  # locally instead of seeing a `422` from the API.
  #
  #   ElevenLabs::Types.validate!(:AgentWorkflowRequestModel, workflow_hash)
  #
  # Semantics match Pydantic's `extra="allow"` default: unknown keys are
  # tolerated (the server accepts them), so the validator only enforces
  # (a) required fields are present, (b) union discriminants match a known
  # variant, and (c) enum values are in the allowed set.
  module Types
    class ValidationError < ElevenLabs::Error
      attr_reader :path, :type_name

      def initialize(message, path:, type_name:)
        super(message)
        @path = path
        @type_name = type_name
      end
    end

    TYPES_PATH = File.expand_path("types.json", __dir__).freeze

    class << self
      # Validate `value` against the type named `type_name` (symbol or string).
      # Raises ValidationError on the first problem. Silently returns nil for
      # types we don't know (forward-compatible with future upstream additions).
      def validate!(type_name, value)
        Validator.new(schema).call(type_name.to_s, value, [type_name.to_s])
        nil
      end

      # Inspect a type definition by name (mostly useful for REPL exploration).
      def describe(type_name)
        schema[type_name.to_s]
      end

      # Force-reload the schema (primarily for tests that stub types.json).
      def reload!
        @schema = nil
        schema
      end

      private

      def schema
        @schema ||= JSON.parse(File.read(TYPES_PATH)).fetch("types")
      end
    end

    class Validator
      def initialize(schema)
        @schema = schema
      end

      def call(type_name, value, path)
        type = @schema[type_name]
        return if type.nil? # unknown → skip, forward-compat

        case type["kind"]
        when "model"
          validate_model(type_name, type, value, path)
        when "union"
          validate_union(type_name, type, value, path)
        when "enum"
          validate_enum(type_name, type, value, path)
        end
      end

      private

      def validate_model(type_name, type, value, path)
        unless value.is_a?(Hash)
          raise ValidationError.new(
            "#{format_path(path)} expected a Hash (#{type_name}), got #{value.class}",
            path: path, type_name: type_name,
          )
        end

        fields = type.fetch("fields", [])
        fields.each do |field|
          name = field["name"]
          present, raw = fetch_key(value, name)

          if !present && field["default"] == "__REQUIRED__"
            raise ValidationError.new(
              "#{format_path(path + [name])} is required (#{type_name})",
              path: path + [name], type_name: type_name,
            )
          end

          next unless present
          next if raw.nil? && field["optional"]

          if field.key?("literal_value") && raw != field["literal_value"]
            raise ValidationError.new(
              "#{format_path(path + [name])} must be #{field['literal_value'].inspect}, got #{raw.inspect}",
              path: path + [name], type_name: type_name,
            )
          end

          recurse_into_field(field["annotation"], raw, path + [name])
        end
      end

      def validate_union(type_name, type, value, path)
        unless value.is_a?(Hash)
          raise ValidationError.new(
            "#{format_path(path)} expected a Hash (#{type_name} union), got #{value.class}",
            path: path, type_name: type_name,
          )
        end

        discriminant_key = type["discriminant"] || "type"
        present, discriminant = fetch_key(value, discriminant_key)
        variants = type.fetch("variants", [])
        expected = variants.map { |v| @schema.dig(v, "discriminant_value") }.compact

        # The discriminator field has a Pydantic default on each variant
        # (e.g. WorkflowEdgeModelInputForwardCondition_Llm defaults to
        # type="llm"), but the live server does NOT apply that default
        # to inbound requests — it rejects payloads that omit the
        # discriminator with a `union_tag_not_found` error. Distinguish
        # "field absent" from "field present but value unknown" so the
        # fix is obvious to the caller.
        unless present
          raise ValidationError.new(
            "#{format_path(path)} is missing the required discriminator " \
              "#{discriminant_key.inspect} (#{type_name}; expected one of " \
              "#{expected.inspect}). The server requires this field explicitly " \
              "on every variant, even when the Pydantic schema marks it as " \
              "having a default.",
            path: path + [discriminant_key], type_name: type_name,
          )
        end

        match = variants.find do |variant_name|
          variant_type = @schema[variant_name]
          variant_type && variant_type["discriminant_value"] == discriminant
        end

        if match.nil?
          raise ValidationError.new(
            "#{format_path(path + [discriminant_key])} #{discriminant.inspect} " \
              "is not a valid variant of #{type_name} (expected one of #{expected.inspect})",
            path: path + [discriminant_key], type_name: type_name,
          )
        end

        call(match, value, path)
      end

      def validate_enum(type_name, type, value, path)
        return if value.nil?
        values = type.fetch("values", [])
        return if values.include?(value)
        raise ValidationError.new(
          "#{format_path(path)} #{value.inspect} is not a valid #{type_name} " \
            "(expected one of #{values.inspect})",
          path: path, type_name: type_name,
        )
      end

      # Given a Python annotation string like
      # `typing.Optional[typing.Dict[str, AgentWorkflowRequestModelNodesValue]]`,
      # find the innermost known type and recurse into `value` with the
      # appropriate container treatment (Dict → Hash of values, List → Array
      # of elements, scalar → direct validation).
      def recurse_into_field(annotation, value, path)
        return if annotation.nil? || value.nil?

        inner_type = last_known_type(annotation)
        return if inner_type.nil?

        if annotation.include?("Dict[") || annotation.include?("Hash<")
          return unless value.is_a?(Hash)
          value.each do |k, v|
            call(inner_type, v, path + ["[#{k.inspect}]"])
          end
        elsif annotation.include?("List[") || annotation.include?("Array<")
          return unless value.is_a?(Array)
          value.each_with_index { |v, i| call(inner_type, v, path + ["[#{i}]"]) }
        else
          call(inner_type, value, path)
        end
      end

      # Extract CamelCase identifiers from an annotation and return the last
      # one that matches a known type in the schema.
      def last_known_type(annotation)
        annotation.scan(/[A-Z][A-Za-z0-9_]+/).reverse_each do |candidate|
          return candidate if @schema.key?(candidate)
        end
        nil
      end

      def fetch_key(hash, name)
        if hash.key?(name)
          [true, hash[name]]
        elsif hash.key?(name.to_sym)
          [true, hash[name.to_sym]]
        else
          [false, nil]
        end
      end

      def format_path(path)
        path.join(".").gsub(".[", "[")
      end
    end
  end
end
