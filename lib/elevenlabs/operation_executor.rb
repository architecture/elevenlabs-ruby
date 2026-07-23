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
      headers = build_headers(request_spec[:headers], params)
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
          param_value = encode_assignment_value(assignment, param_value)
          if assignment[:path].nil? || assignment[:path].empty?
            # Empty path means the param value IS the body (spread onto it if hash)
            if param_value.is_a?(Hash)
              body.merge!(param_value)
            else
              body = param_value
            end
          else
            body = ElevenLabs::Utils.assign_path(body, assignment[:path], param_value)
          end
        end
      end
      body = ElevenLabs::Utils.deep_compact(body)
      additional = request_options[:additional_body_parameters]
      body = (body || {}).merge(additional) if additional
      body
    end

    # Some form fields are sent JSON-encoded rather than as raw values — the
    # upstream SDK wraps them in `json.dumps(...)`, so `keyterms: ["a", "b"]`
    # goes on the wire as the text `["a","b"]` and `entity_redaction: "pii"`
    # as `"pii"` (quotes included). Absent values are left untouched so
    # deep_compact still strips them instead of sending the text "null".
    def encode_assignment_value(assignment, value)
      return value unless assignment[:encode] == "json"
      return value if value.nil? || value.equal?(ElevenLabs::Utils::OMIT)
      JSON.generate(value)
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

    # Header values are usually static strings, but a spec value of
    # `{ param: "x" }` means the header is built from that argument — emit it
    # only when the caller supplied one, so an unset optional header is absent
    # rather than sent empty.
    def build_headers(spec, params)
      (spec || {}).each_with_object({}) do |(key, value), acc|
        if value.is_a?(Hash) && value[:param]
          resolved = params[value[:param].to_sym]
          next if resolved.nil? || resolved.equal?(ElevenLabs::Utils::OMIT)
          acc[key.to_s] = resolved.to_s
        else
          acc[key.to_s] = value
        end
      end
    end
  end
end
