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

    def initialize(response)
      @response = response
      @requests = []
    end

    def run_request(method, path, body, headers)
      request = FakeRequest.new
      yield request if block_given?
      @requests << { method: method, path: path, body: body, headers: headers }
      @response
    end
  end

  def setup
    @client = ElevenLabs::HTTPClient.new(base_url: "https://api.example.com", api_key: nil, headers: {}, timeout: 5)
    response = FakeResponse.new(200, "{}", {})
    @connection = FakeConnection.new(response)
    @client.instance_variable_set(:@connection, @connection)
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
end
