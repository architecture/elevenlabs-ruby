require "test_helper"
require "stringio"
require "tempfile"
require "ostruct"

class HttpClientTest < Minitest::Test
  FakeResponse = Struct.new(:status, :body, :headers) do
    def success?
      status && status >= 200 && status < 300
    end
  end

  class FakeRequest
    attr_reader :params, :options

    def initialize
      @params = {}
      @options = OpenStruct.new
    end
  end

  class FakeConnection
    attr_reader :requests

    def initialize(*responses)
      @responses = responses
      @requests = []
    end

    def run_request(method, path, body, headers)
      request = FakeRequest.new
      yield request if block_given?
      @requests << { method: method, path: path, body: body, headers: headers }
      @responses.length > 1 ? @responses.shift : @responses.first
    end
  end

  def setup
    @client = ElevenLabs::HTTPClient.new(base_url: "https://api.example.com", api_key: nil, headers: {}, timeout: 5)
    response = FakeResponse.new(200, "{}", {})
    @connection = FakeConnection.new(response)
    @client.instance_variable_set(:@connection, @connection)
  end

  def make_client_with_connection(*responses)
    client = ElevenLabs::HTTPClient.new(base_url: "https://api.example.com", api_key: "key", headers: {}, timeout: 5)
    connection = FakeConnection.new(*responses)
    client.instance_variable_set(:@connection, connection)
    [client, connection]
  end

  # Regression: a non-file multipart value carrying an explicit content type
  # (speech_to_text.convert's `additional_formats`) must become a typed form
  # part. This previously referenced Faraday::Multipart::Param — a constant
  # that does not exist — so every such request raised NameError before
  # reaching the network.
  def test_typed_non_file_multipart_value_becomes_param_part
    client, connection = make_client_with_connection(FakeResponse.new(200, "{}", {}))

    client.request(
      method: "POST",
      path: "/v1/speech-to-text",
      form: { "model_id" => "scribe_v2" },
      files: [{ name: "additional_formats", value: [{ "format" => "srt" }], content_type: "application/json" }],
      headers: {}
    )

    part = connection.requests.last[:body]["additional_formats"]
    assert_instance_of Faraday::Multipart::ParamPart, part
    assert_equal "application/json", part.content_type
    # The value is JSON-encoded on the way in, not Ruby-inspected.
    assert_equal '[{"format":"srt"}]', part.value
  end

  def test_upload_from_io_auto_closes_when_requested
    io = StringIO.new("sample-data")
    upload = ElevenLabs::Upload.from_io(io, filename: "sample.txt", auto_close: true)

    @client.request(
      method: "POST",
      path: "/upload",
      files: [{ name: "files", value: [upload] }],
      headers: {},
      force_multipart: true
    )

    assert io.closed?, "expected IO to be closed after request completes"
  end

  def test_upload_from_path_uses_file_opener_and_closes_handle
    tempfile = Tempfile.new("elevenlabs-upload")
    tempfile.write("hello")
    tempfile.flush

    opened_files = []
    original_opener = ElevenLabs::Upload.file_opener
    ElevenLabs::Upload.file_opener = lambda do |path|
      file = File.open(path, "rb")
      opened_files << file
      file
    end

    upload = ElevenLabs::Upload.from_path(tempfile.path)
    @client.request(
      method: "POST",
      path: "/upload",
      files: [{ name: "files", value: [upload] }],
      headers: {},
      force_multipart: true
    )

    refute opened_files.empty?, "expected file opener to be invoked"
    assert opened_files.all?(&:closed?), "expected opened files to be closed after request"
  ensure
    ElevenLabs::Upload.file_opener = original_opener
    tempfile.close!
  end

  def test_stream_request_cleans_up_after_enumerator_runs
    io = StringIO.new("stream-data")
    upload = ElevenLabs::Upload.from_io(io, filename: "stream.txt", auto_close: true)

    enumerator =
      @client.stream(
        method: "POST",
        path: "/streaming",
        files: [{ name: "files", value: [upload] }],
        headers: {},
        force_multipart: true
      )

    assert_kind_of Enumerator, enumerator
    enumerator.each { break } # trigger execution
    assert io.closed?, "expected IO to be closed after streaming request completes"
  end

  def test_request_follows_307_redirect
    redirect = FakeResponse.new(307, "", { "location" => "https://api.example.com/v2/agents/abc" })
    success  = FakeResponse.new(200, '{"agent_id":"abc"}', {})
    client, connection = make_client_with_connection(redirect, success)

    result = client.request(method: "PATCH", path: "/v1/agents/abc", json: { name: "test" }, headers: {})

    assert_equal({ "agent_id" => "abc" }, result)
    assert_equal 2, connection.requests.length
    assert_equal "https://api.example.com/v2/agents/abc", connection.requests.last[:path]
  end

  def test_request_follows_301_redirect
    redirect = FakeResponse.new(301, "", { "location" => "https://api.example.com/new/path" })
    success  = FakeResponse.new(200, '{"ok":true}', {})
    client, connection = make_client_with_connection(redirect, success)

    result = client.request(method: "GET", path: "/old/path", headers: {})

    assert_equal({ "ok" => true }, result)
    assert_equal 2, connection.requests.length
  end

  def test_request_raises_after_too_many_redirects
    redirect = FakeResponse.new(307, "", { "location" => "https://api.example.com/loop" })
    client, = make_client_with_connection(*([redirect] * 6))

    assert_raises(ElevenLabs::HTTPError) do
      client.request(method: "PATCH", path: "/agents/abc", json: {}, headers: {})
    end
  end

  def test_request_raises_on_redirect_with_no_location
    redirect = FakeResponse.new(307, "", {})
    client, = make_client_with_connection(redirect)

    assert_raises(ElevenLabs::HTTPError) do
      client.request(method: "PATCH", path: "/agents/abc", json: {}, headers: {})
    end
  end

  # Regression: endpoints like conversational_ai.phone_numbers.list return a
  # bare top-level JSON array. handle_response must parse it into a Ruby Array
  # and return it verbatim — never coerce it to a Hash (which would raise
  # "TypeError: wrong element type Hash at 0 (expected array)") or wrap it.
  def test_request_returns_bare_json_array_untouched
    body = '[{"phone_number_id":"pn_1","provider":"twilio"},{"phone_number_id":"pn_2","provider":"twilio"}]'
    client, = make_client_with_connection(FakeResponse.new(200, body, {}))

    result = client.request(method: "GET", path: "/v1/convai/phone-numbers", headers: {})

    assert_instance_of Array, result
    assert_equal 2, result.length
    assert_equal "pn_1", result.first["phone_number_id"]
    assert_equal(
      [
        { "phone_number_id" => "pn_1", "provider" => "twilio" },
        { "phone_number_id" => "pn_2", "provider" => "twilio" }
      ],
      result
    )
  end

  # Captures the fully-encoded multipart body so the tests below can assert on
  # what actually goes over the wire, not on the hash handed to Faraday.
  class CapturingAdapter < Faraday::Adapter
    class << self
      attr_accessor :last_body
    end

    def call(env)
      super
      body = env.request_body
      self.class.last_body = body.respond_to?(:read) ? body.read : body.to_s
      save_response(env, 200, "{}", {})
      @app.call(env)
    end
  end

  def multipart_field_names(body)
    body.scan(/(?<!file)name="([^"]*)"/).flatten
  end

  # Upstream sends list-of-primitive multipart fields as repeated form fields
  # with the bare field name (elevenlabs-python #819). Faraday's default
  # encoding would emit "tags[]" twice instead, which the API rejects.
  def test_array_form_values_become_repeated_fields_with_bare_name
    client = ElevenLabs::HTTPClient.new(
      base_url: "https://api.example.com", api_key: "key", headers: {}, timeout: 5, adapter: CapturingAdapter
    )

    client.request(
      method: "POST",
      path: "/v1/music/finetunes",
      form: { "name" => "retro", "tags" => %w[retro 80s] },
      files: [{ name: "files", value: ElevenLabs::Upload.from_io(StringIO.new("audio"), filename: "a.mp3") }],
      headers: {},
      force_multipart: true
    )

    names = multipart_field_names(CapturingAdapter.last_body)
    assert_equal 2, names.count("tags"), "expected two bare `tags` parts, got #{names.inspect}"
    refute_includes names, "tags[]"
  end

  # The same bracket-free encoding applies to genuine multi-file uploads.
  def test_multiple_files_become_repeated_fields_with_bare_name
    client = ElevenLabs::HTTPClient.new(
      base_url: "https://api.example.com", api_key: "key", headers: {}, timeout: 5, adapter: CapturingAdapter
    )

    client.request(
      method: "POST",
      path: "/v1/music/finetunes",
      form: { "name" => "retro" },
      files: [{ name: "files", value: [
        ElevenLabs::Upload.from_io(StringIO.new("one"), filename: "one.mp3"),
        ElevenLabs::Upload.from_io(StringIO.new("two"), filename: "two.mp3")
      ] }],
      headers: {},
      force_multipart: true
    )

    names = multipart_field_names(CapturingAdapter.last_body)
    assert_equal 2, names.count("files"), "expected two bare `files` parts, got #{names.inspect}"
    refute_includes names, "files[]"
  end
end
