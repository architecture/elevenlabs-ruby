require "test_helper"
require "stringio"
require "ostruct"

class HttpClientHeadersAndResponseTest < Minitest::Test
  FakeResponse = Struct.new(:status, :body, :headers) do
    def success?
      status && status >= 200 && status < 300
    end
  end

  class CapturingConnection
    attr_reader :requests

    def initialize(response)
      @response = response
      @requests = []
    end

    def run_request(method, path, body, headers)
      request = OpenStruct.new(params: {}, options: OpenStruct.new)
      yield request if block_given?
      @requests << { method: method, path: path, body: body, headers: headers, params: request.params, timeout: request.options.timeout }
      @response
    end
  end

  def make_client(api_key: "sk-test", headers: {}, timeout: nil, response: nil)
    response ||= FakeResponse.new(200, '{"ok":true}', {})
    client = ElevenLabs::HTTPClient.new(base_url: "https://api.example.com", api_key: api_key, headers: headers, timeout: timeout)
    connection = CapturingConnection.new(response)
    client.instance_variable_set(:@connection, connection)
    [client, connection]
  end

  # --- Default headers ---

  def test_default_headers_include_user_agent
    client, conn = make_client
    client.request(method: "GET", path: "/v1/test", headers: {})

    sent = conn.requests.last[:headers]
    assert_equal "elevenlabs-ruby/#{ElevenLabs::VERSION}", sent["User-Agent"]
  end

  def test_default_headers_include_fern_metadata
    client, conn = make_client
    client.request(method: "GET", path: "/v1/test", headers: {})

    sent = conn.requests.last[:headers]
    assert_equal "Ruby", sent["X-Fern-Language"]
    assert_equal "elevenlabs-ruby", sent["X-Fern-SDK-Name"]
    assert_equal ElevenLabs::VERSION, sent["X-Fern-SDK-Version"]
  end

  # --- API key injection ---

  def test_api_key_injected_as_header
    client, conn = make_client(api_key: "my-secret-key")
    client.request(method: "GET", path: "/v1/test", headers: {})

    sent = conn.requests.last[:headers]
    assert_equal "my-secret-key", sent["xi-api-key"]
  end

  def test_no_api_key_header_when_nil
    client, conn = make_client(api_key: nil)
    client.request(method: "GET", path: "/v1/test", headers: {})

    sent = conn.requests.last[:headers]
    refute sent.key?("xi-api-key")
  end

  # --- Base headers merged ---

  def test_base_headers_merged_into_request
    client, conn = make_client(headers: { "X-Custom" => "value" })
    client.request(method: "GET", path: "/v1/test", headers: {})

    sent = conn.requests.last[:headers]
    assert_equal "value", sent["X-Custom"]
    # default headers still present
    assert_equal "Ruby", sent["X-Fern-Language"]
  end

  # --- Per-request headers ---

  def test_per_request_headers_override_defaults
    client, conn = make_client
    client.request(method: "GET", path: "/v1/test", headers: { "User-Agent" => "custom-agent" })

    sent = conn.requests.last[:headers]
    assert_equal "custom-agent", sent["User-Agent"]
  end

  # --- Additional headers from request_options ---

  def test_additional_headers_from_request_options
    client, conn = make_client
    client.request(
      method: "GET",
      path: "/v1/test",
      headers: {},
      request_options: { additional_headers: { "X-Trace-Id" => "abc123" } }
    )

    sent = conn.requests.last[:headers]
    assert_equal "abc123", sent["X-Trace-Id"]
  end

  def test_additional_headers_symbol_keys_converted
    client, conn = make_client
    client.request(
      method: "GET",
      path: "/v1/test",
      headers: {},
      request_options: { additional_headers: { x_trace: "abc" } }
    )

    sent = conn.requests.last[:headers]
    assert_equal "abc", sent["x_trace"]
  end

  # --- JSON body preparation ---

  def test_json_body_serialized_with_content_type
    client, conn = make_client
    client.request(method: "POST", path: "/v1/test", json: { "name" => "hello" }, headers: {})

    req = conn.requests.last
    assert_equal '{"name":"hello"}', req[:body]
    assert_equal "application/json", req[:headers]["Content-Type"]
  end

  def test_json_content_type_not_overridden_if_already_set
    client, conn = make_client
    client.request(method: "POST", path: "/v1/test", json: { "a" => 1 }, headers: { "Content-Type" => "application/json; charset=utf-8" })

    req = conn.requests.last
    assert_equal "application/json; charset=utf-8", req[:headers]["Content-Type"]
  end

  # --- Form body ---

  def test_form_body_passed_directly
    client, conn = make_client
    client.request(method: "POST", path: "/v1/test", form: { "field" => "value" }, headers: {})

    req = conn.requests.last
    assert_equal({ "field" => "value" }, req[:body])
    refute req[:headers].key?("Content-Type"), "form body should not set explicit Content-Type"
  end

  # --- No body ---

  def test_nil_body_when_no_json_or_form
    client, conn = make_client
    client.request(method: "GET", path: "/v1/test", headers: {})

    req = conn.requests.last
    assert_nil req[:body]
  end

  # --- Timeout ---

  def test_default_timeout_is_240
    client, conn = make_client(timeout: nil)
    client.request(method: "GET", path: "/v1/test", headers: {})

    assert_equal 240, conn.requests.last[:timeout]
  end

  def test_custom_timeout_from_constructor
    client, conn = make_client(timeout: 30)
    client.request(method: "GET", path: "/v1/test", headers: {})

    assert_equal 30, conn.requests.last[:timeout]
  end

  def test_request_options_timeout_overrides_constructor
    client, conn = make_client(timeout: 30)
    client.request(method: "GET", path: "/v1/test", headers: {}, request_options: { timeout_in_seconds: 5 })

    assert_equal 5, conn.requests.last[:timeout]
  end

  # --- Additional query parameters ---

  def test_additional_query_parameters_from_request_options
    client, conn = make_client
    client.request(
      method: "GET",
      path: "/v1/test",
      query: { "page" => 1 },
      headers: {},
      request_options: { additional_query_parameters: { "debug" => true } }
    )

    params = conn.requests.last[:params]
    assert_equal 1, params["page"]
    assert_equal true, params["debug"]
  end

  def test_nil_query_values_compacted
    client, conn = make_client
    client.request(method: "GET", path: "/v1/test", query: { "a" => 1, "b" => nil }, headers: {})

    params = conn.requests.last[:params]
    assert_equal 1, params["a"]
    refute params.key?("b")
  end

  # --- JSON response parsing ---

  def test_json_response_parsed
    client, = make_client(response: FakeResponse.new(200, '{"items":[1,2,3]}', {}))
    result = client.request(method: "GET", path: "/v1/test", headers: {})

    assert_equal({ "items" => [1, 2, 3] }, result)
  end

  def test_non_json_response_returned_as_string
    client, = make_client(response: FakeResponse.new(200, "plain text body", {}))
    result = client.request(method: "GET", path: "/v1/test", headers: {})

    assert_equal "plain text body", result
  end

  def test_empty_response_returns_nil
    client, = make_client(response: FakeResponse.new(200, "", {}))
    result = client.request(method: "GET", path: "/v1/test", headers: {})

    assert_nil result
  end

  def test_nil_response_body_returns_nil
    client, = make_client(response: FakeResponse.new(200, nil, {}))
    result = client.request(method: "GET", path: "/v1/test", headers: {})

    assert_nil result
  end

  # --- Error handling ---

  def test_http_error_raised_on_4xx
    client, = make_client(response: FakeResponse.new(422, '{"detail":"invalid"}', {}))

    err = assert_raises(ElevenLabs::HTTPError) do
      client.request(method: "POST", path: "/v1/test", headers: {})
    end
    assert_equal 422, err.status
    assert_equal({ "detail" => "invalid" }, err.body)
  end

  def test_http_error_with_non_json_body
    client, = make_client(response: FakeResponse.new(500, "Internal Server Error", {}))

    err = assert_raises(ElevenLabs::HTTPError) do
      client.request(method: "GET", path: "/v1/test", headers: {})
    end
    assert_equal 500, err.status
    assert_equal "Internal Server Error", err.body
  end

  def test_http_error_on_stream_non_success
    response = FakeResponse.new(401, '{"detail":"unauthorized"}', {})
    client = ElevenLabs::HTTPClient.new(base_url: "https://api.example.com", api_key: "bad", headers: {})
    conn = CapturingConnection.new(response)
    client.instance_variable_set(:@connection, conn)

    enum = client.stream(method: "GET", path: "/v1/test", headers: {})
    err = assert_raises(ElevenLabs::HTTPError) { enum.each {} }
    assert_equal 401, err.status
  end

  # --- Force multipart ---

  def test_force_multipart_sends_form_as_multipart
    client, conn = make_client
    client.request(
      method: "POST",
      path: "/v1/test",
      form: { "field" => "value" },
      headers: {},
      force_multipart: true
    )

    req = conn.requests.last
    # When force_multipart is true, form data is passed as body (multipart hash)
    assert_equal({ "field" => "value" }, req[:body])
  end
end
