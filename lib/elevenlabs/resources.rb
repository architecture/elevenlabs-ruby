require "json"

module ElevenLabs
  module Resources
    SPEC_PATH = File.expand_path("spec.json", __dir__)
    SPEC = JSON.parse(File.read(SPEC_PATH), symbolize_names: true)

    class Base
      def initialize(http_client, executor = nil)
        @http = http_client
        @executor = executor || ElevenLabs::OperationExecutor.new(http_client)
        @children_cache = {}
      end
    end

    @registry = {}
    @root_class = nil

    class << self
      attr_reader :registry

      def root_operations
        SPEC[:operations] || []
      end

      def top_level_resources
        (SPEC[:children] || {}).each_with_object({}) { |(key, value), acc| acc[key.to_s] = value }
      end

      def class_for(path)
        build_resources unless @built
        @registry[path]
      end

      def build_resources
        return if @built

        @registry = {}
        build_node(SPEC, [])
        @built = true
      end

      private

      def build_node(node_spec, path)
        klass = Class.new(Base)
        define_operations(klass, node_spec[:operations] || [])

        (node_spec[:children] || {}).each do |child_name, child_spec|
          child_key = child_name.to_s
          child_path = path + [child_key]
          child_class = build_node(child_spec, child_path)
          method_name = child_key.tr("-", "_")
          klass.define_method(method_name) do
            @children_cache[method_name] ||= child_class.new(@http, @executor)
          end
        end

        const_name = classify(path.last) if path.any?
        const_set(const_name, klass) if const_name && !const_defined?(const_name, false)
        @registry[path] = klass
        klass
      end

      def define_operations(klass, operations)
        operations.each_with_index do |operation, idx|
          const_name = "OPERATION_#{operation[:name].upcase}_#{idx}"
          klass.const_set(const_name, operation)
          method_definition = build_method_definition(operation, const_name)
          klass.class_eval(method_definition, __FILE__, __LINE__)
        end
      end

      def build_method_definition(operation, const_name)
        positional = operation[:positional_params] || []
        keyword = operation[:keyword_params] || []

        positional_code =
          positional.map do |param|
            default = literal_for(param[:default])
            default ? "#{param[:name]} = #{default}" : param[:name]
          end

        keyword_code =
          keyword.map do |param|
            default =
              if param[:default] == "__OMIT__"
                "ElevenLabs::Utils::OMIT"
              else
                literal_for(param[:default]) || "nil"
              end
            "#{param[:name]}: #{default}"
          end

        params_assignment =
          (positional + keyword).map do |param|
            "#{param[:name]}: #{param[:name]}"
          end

        signature_parts = positional_code + keyword_code
        header =
          if signature_parts.empty?
            "def #{operation[:name]}"
          else
            "def #{operation[:name]}(#{signature_parts.join(', ')})"
          end

        <<~RUBY
          #{header}
            params = {
              #{params_assignment.join(",\n              ")}
            }
            @executor.call(self.class::#{const_name}, params)
          end
        RUBY
      end

      def literal_for(default)
        return nil if default.nil? || default == "__OMIT__"
        case default
        when true, false, Numeric
          default.to_s
        when String
          default.dump
        else
          nil
        end
      end

      def classify(name)
        name.split("_").map { |part| part.capitalize }.join
      end
    end
  end
end
