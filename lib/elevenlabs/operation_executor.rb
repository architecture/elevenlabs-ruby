require_relative "utils"

module ElevenLabs
  class OperationExecutor
    def initialize(http_client)
      @http = http_client
    end

    def call(operation_spec, arguments)
      request_spec = operation_spec.fetch(:request)
      params = arguments.dup
      request_options = params.delete(:request_options) || {}
      path = build_path(request_spec[:path], params)
      query = build_query(request_spec[:query], params, request_options)
      json_body = build_body(request_spec[:json], params, request_options)
      form_body = build_body(request_spec[:form], params, request_options)
      files = build_files(request_spec[:files], params)
      headers = stringify_keys(request_spec[:headers] || {})
      if request_spec[:streaming]
        @http.stream(
          method: request_spec[:method],
          path: path,
          query: query,
          json: json_body,
          form: form_body,
          files: files,
          headers: headers,
          request_options: request_options,
          force_multipart: request_spec[:force_multipart]
        )
      else
        @http.request(
          method: request_spec[:method],
          path: path,
          query: query,
          json: json_body,
          form: form_body,
          files: files,
          headers: headers,
          request_options: request_options,
          force_multipart: request_spec[:force_multipart]
        )
      end
    end

    private

    def build_path(path_spec, params)
      template = path_spec[:template]
      (path_spec[:params] || []).each do |name|
        sym = name.to_sym
        value = params.fetch(sym)
        template = template.gsub("{#{name}}", ElevenLabs::Utils.encode_path_segment(value))
      end
      template
    end

    def build_query(entries, params, request_options)
      query = {}
      (entries || []).each do |entry|
        value =
          if entry[:param]
            params[entry[:param].to_sym]
          else
            entry[:literal]
          end
        next if value.nil? || value.equal?(ElevenLabs::Utils::OMIT)
        query[entry[:name]] = value
      end
      if request_options[:additional_query_parameters]
        query.merge!(request_options[:additional_query_parameters].transform_keys(&:to_s))
      end
      query
    end

    def build_body(spec, params, request_options)
      return nil unless spec

      body = spec[:literal] ? ElevenLabs::Utils.deep_dup(spec[:literal]) : nil
      if spec[:assignments]&.any?
        body ||= {}
        spec[:assignments].each do |assignment|
          param_value = params[assignment[:param].to_sym]
          body = ElevenLabs::Utils.assign_path(body, assignment[:path], param_value)
        end
      end
      body = ElevenLabs::Utils.deep_compact(body)
      additional = request_options[:additional_body_parameters]
      body = (body || {}).merge(additional) if additional
      body
    end

    def build_files(entries, params)
      (entries || []).filter_map do |entry|
        resolved = resolve_file_entry(entry[:value], params)
        next unless resolved
        resolved[:name] = entry[:name]
        resolved
      end
    end

    def resolve_file_entry(spec, params)
      return nil unless spec
      case spec[:type]
      when "param"
        value = params[spec[:name].to_sym]
        return nil if value.nil? || value.equal?(ElevenLabs::Utils::OMIT)
        { value: value }
      when "literal"
        { value: spec[:value] }
      when "tuple"
        content = resolve_file_entry(spec[:content], params) if spec[:content]
        return nil unless content
        {
          value: content[:value],
          filename: spec[:filename],
          content_type: spec[:content_type],
          headers: spec[:headers]
        }
      when "list"
        values = (spec[:items] || []).map { |item| resolve_file_entry(item, params)&.fetch(:value) }.compact
        return nil if values.empty?
        { value: values }
      else
        nil
      end
    end

    def stringify_keys(hash)
      hash.each_with_object({}) { |(key, value), acc| acc[key.to_s] = value }
    end
  end
end
