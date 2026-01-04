require "faraday"
require "faraday/multipart"
require "json"

module ElevenLabs
  class HTTPClient
    DEFAULT_TIMEOUT = 240

    def initialize(base_url:, api_key:, headers: {}, timeout: nil, adapter: Faraday.default_adapter)
      @api_key = api_key
      @timeout = timeout || DEFAULT_TIMEOUT
      @base_headers = headers || {}
      @connection =
        Faraday.new(url: base_url) do |conn|
          conn.request :multipart
          conn.request :url_encoded
          conn.adapter adapter
        end
    end

    def request(method:, path:, query: {}, json: nil, form: nil, files: [], headers: {}, request_options: {}, force_multipart: false)
      request_options ||= {}
      body, prepared_headers, cleanups =
        prepare_body(json: json, form: form, files: files, headers: headers, force_multipart: force_multipart)
      final_headers = build_headers(prepared_headers, request_options)
      begin
        response =
          perform_request(
            method: method,
            path: path,
            query: query,
            body: body,
            headers: final_headers,
            request_options: request_options
          )
        handle_response(response)
      ensure
        run_cleanups(cleanups)
      end
    end

    def stream(method:, path:, query: {}, json: nil, form: nil, files: [], headers: {}, request_options: {}, force_multipart: false)
      request_options ||= {}
      body_proc =
        lambda do
          prepare_body(json: json, form: form, files: files, headers: headers, force_multipart: force_multipart)
        end
      query_params = query
      Enumerator.new do |yielder|
        body, prepared_headers, cleanups = body_proc.call
        final_headers = build_headers(prepared_headers, request_options)
        begin
          response =
            perform_request(
              method: method,
              path: path,
              query: query_params,
              body: body,
              headers: final_headers,
              request_options: request_options
            ) do |req|
              req.options.on_data = proc { |chunk, _| yielder << chunk if chunk && !chunk.empty? }
            end
          raise_http_error(response) unless response.success?
        ensure
          run_cleanups(cleanups)
        end
      end
    end

    private

    def build_headers(headers, request_options)
      result = default_headers.merge(@base_headers).merge(headers || {})
      result["xi-api-key"] = @api_key if @api_key
      additional = request_options && request_options[:additional_headers]
      result.merge!(additional.transform_keys(&:to_s)) if additional
      result
    end

    def default_headers
      {
        "User-Agent" => "elevenlabs-ruby/#{ElevenLabs::VERSION}",
        "X-Fern-Language" => "Ruby",
        "X-Fern-SDK-Name" => "elevenlabs-ruby",
        "X-Fern-SDK-Version" => ElevenLabs::VERSION
      }
    end

    def prepare_body(json:, form:, files:, headers:, force_multipart:)
      prepared_headers = headers.dup
      cleanups = []
      if !files.empty? || force_multipart
        multipart = (form || {}).dup
        files.each do |entry|
          multipart = merge_multipart_entry(multipart, entry, cleanups)
        end
        [multipart, prepared_headers, cleanups]
      elsif json
        prepared_headers["Content-Type"] ||= "application/json"
        [JSON.generate(json), prepared_headers, cleanups]
      elsif form
        [form, prepared_headers, cleanups]
      else
        [nil, prepared_headers, cleanups]
      end
    end

    def merge_multipart_entry(body, entry, cleanups)
      name = entry[:name]
      value = entry[:value]
      return body if value.nil?
      if value.is_a?(Array)
        body[name] = value.map { |item| prepare_file_value(name, item, entry, cleanups) }
      else
        body[name] = prepare_file_value(name, value, entry, cleanups)
      end
      body
    end

    def prepare_file_value(field_name, value, entry, cleanups)
      content_type = entry[:content_type]
      filename = entry[:filename]
      headers = entry[:headers] || {}
      if content_type == "application/json" && !value.is_a?(String)
        value = JSON.generate(value)
      end
      return Faraday::Multipart::Param.new(field_name, value, content_type, headers) if content_type && !file_like?(value)

      if value.is_a?(ElevenLabs::Upload)
        return build_upload_from_helper(value, cleanups)
      end

      return value if value.is_a?(Faraday::UploadIO)

      if value.is_a?(String) && File.exist?(value)
        mime = content_type || "application/octet-stream"
        return Faraday::UploadIO.new(value, mime, filename || File.basename(value))
      end
      if value.respond_to?(:read)
        mime = content_type || "application/octet-stream"
        return Faraday::UploadIO.new(value, mime, filename)
      end
      value
    end

    def file_like?(value)
      value.is_a?(Faraday::UploadIO) || value.respond_to?(:read)
    end

    def build_upload_from_helper(upload, cleanups)
      mime = upload.content_type || "application/octet-stream"
      if upload.path?
        io = ElevenLabs::Upload.open_file(upload.source)
        if upload.auto_close?
          cleanups << proc { io.close unless io.closed? }
        end
        Faraday::UploadIO.new(io, mime, upload.filename || File.basename(upload.source))
      else
        io = upload.source
        if upload.auto_close? && io.respond_to?(:close)
          cleanups << proc { io.close unless io.closed? }
        end
        Faraday::UploadIO.new(io, mime, upload.filename)
      end
    end

    def run_cleanups(cleanups)
      cleanups.each do |cleanup|
        begin
          cleanup.call
        rescue StandardError
          # ignore cleanup errors
        end
      end
    end

    def perform_request(method:, path:, query:, body:, headers:, request_options:)
      request_options ||= {}
      @connection.run_request(method.to_s.downcase.to_sym, path, body, headers) do |req|
        req.params.update(compact_query(query, request_options))
        timeout = (request_options && request_options[:timeout_in_seconds]) || @timeout
        req.options.timeout = timeout
        req.options.open_timeout = timeout
        yield req if block_given?
      end
    end

    def compact_query(query, request_options)
      params = (query || {}).dup
      additional = request_options[:additional_query_parameters]
      params.merge!(additional.transform_keys(&:to_s)) if additional
      params.delete_if { |_k, v| v.nil? }
    end

    def handle_response(response)
      raise_http_error(response) unless response.success?
      if response.body && !response.body.empty?
        begin
          JSON.parse(response.body)
        rescue JSON::ParserError
          response.body
        end
      else
        nil
      end
    end

    def raise_http_error(response)
      body = response.body
      begin
        parsed = JSON.parse(body)
      rescue JSON::ParserError
        parsed = body
      end
      raise ElevenLabs::HTTPError.new(
              "HTTP #{response.status}",
              status: response.status,
              body: parsed,
              headers: response.headers
            )
    end
  end
end
