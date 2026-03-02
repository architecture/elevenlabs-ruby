require "test_helper"
require "stringio"

class OperationSerializationTest < Minitest::Test
  class FakeHTTP
    attr_reader :requests

    def initialize
      @requests = []
    end

    def request(**kwargs)
      @requests << kwargs.merge(kind: :request)
      {}
    end

    def stream(**kwargs)
      @requests << kwargs.merge(kind: :stream)
      Enumerator.new {}
    end
  end

  def setup
    @http = FakeHTTP.new
    @client = ElevenLabs::Client.new(api_key: "test", http_client: @http)
  end

  def test_history_list_serialization
    @client.history.list(page_size: 10, voice_id: "voice_123")

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/history", request[:path]
    assert_equal(
      {
        "page_size" => 10,
        "voice_id" => "voice_123"
      },
      request[:query]
    )
    assert_nil request[:json]
    assert_nil request[:form]
  end

  def test_file_upload_uses_helper_and_form_serialization
    audio = ElevenLabs::Upload.from_io(StringIO.new("audio-bytes"), filename: "sample.wav", content_type: "audio/wav")

    @client.voices.pvc.samples.create(
      "voice123",
      files: [audio],
      remove_background_noise: true
    )

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/voices/pvc/voice123/samples", request[:path]
    assert_equal({ "remove_background_noise" => true }, request[:form])
    assert_equal 1, request[:files].length
    entry = request[:files].first
    assert_equal "files", entry[:name]
    assert_equal [audio], entry[:value]
  end

  def test_text_to_speech_convert_stream_is_recorded
    stream = @client.text_to_speech.convert("voice_123", text: "Hello there")

    assert_kind_of Enumerator, stream
    request = @http.requests.last
    assert_equal :stream, request[:kind]
    assert_equal "POST", request[:method]
    assert_equal "v1/text-to-speech/voice_123", request[:path]
    assert_equal({ "text" => "Hello there" }, request[:json])
  end

  def test_audio_native_update_content_from_url
    @client.audio_native.update_content_from_url(url: "https://example.com/page")

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/audio-native/content", request[:path]
    assert_equal({ "url" => "https://example.com/page" }, request[:json])
  end

  def test_conversations_files_create_multipart
    file = ElevenLabs::Upload.from_io(StringIO.new("image-bytes"), filename: "image.png", content_type: "image/png")

    @client.conversational_ai.conversations.files.create("conv_abc", file: file)

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/convai/conversations/conv_abc/files", request[:path]
    assert_equal 1, request[:files].length
    entry = request[:files].first
    assert_equal "file", entry[:name]
    assert_equal file, entry[:value]
  end

  def test_conversations_files_delete_two_path_params
    @client.conversational_ai.conversations.files.delete("conv_abc", "file_xyz")

    request = @http.requests.last
    assert_equal "DELETE", request[:method]
    assert_equal "v1/convai/conversations/conv_abc/files/file_xyz", request[:path]
    assert_nil request[:json]
    assert_nil request[:form]
  end

  def test_conversations_messages_search_query_params
    @client.conversational_ai.conversations.messages.search(
      text_query: "hello world",
      agent_id: "agent_123",
      page_size: 10
    )

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/convai/conversations/messages/smart-search", request[:path]
    assert_equal "hello world", request[:query]["text_query"]
    assert_equal "agent_123", request[:query]["agent_id"]
    assert_equal 10, request[:query]["page_size"]
    assert_nil request[:json]
  end

  def test_conversations_messages_text_search_query_params
    @client.conversational_ai.conversations.messages.text_search(
      text_query: "billing issue",
      page_size: 5,
      call_duration_min_secs: 30
    )

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/convai/conversations/messages/text-search", request[:path]
    assert_equal "billing issue", request[:query]["text_query"]
    assert_equal 5, request[:query]["page_size"]
    assert_equal 30, request[:query]["call_duration_min_secs"]
    assert_nil request[:json]
  end

  def test_conversational_ai_llm_list
    @client.conversational_ai.llm.list

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/convai/llm/list", request[:path]
    assert_nil request[:json]
  end
end
