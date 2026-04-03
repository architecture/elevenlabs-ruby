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

  def test_music_upload_multipart
    file = ElevenLabs::Upload.from_io(StringIO.new("audio-bytes"), filename: "track.mp3", content_type: "audio/mpeg")

    @client.music.upload(file: file, extract_composition_plan: true)

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/music/upload", request[:path]
    assert_equal({ "extract_composition_plan" => true }, request[:form])
    assert_equal 1, request[:files].length
    entry = request[:files].first
    assert_equal "file", entry[:name]
    assert_equal file, entry[:value]
  end

  # --- v0.3.4 tests: new/updated parameters from Python SDK v2.39.1 ---

  def test_audio_native_update_content_from_url_with_author_and_title
    @client.audio_native.update_content_from_url(
      url: "https://example.com/page",
      author: "Jane Doe",
      title: "My Article"
    )

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/audio-native/content", request[:path]
    assert_equal "https://example.com/page", request[:json]["url"]
    assert_equal "Jane Doe", request[:json]["author"]
    assert_equal "My Article", request[:json]["title"]
  end

  def test_batch_calls_create_with_target_concurrency_limit
    @client.conversational_ai.batch_calls.create(
      call_name: "March Campaign",
      agent_id: "agent_abc",
      recipients: [{ "phone_number" => "+1234567890" }],
      target_concurrency_limit: 10
    )

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/convai/batch-calling/submit", request[:path]
    assert_equal "March Campaign", request[:json]["call_name"]
    assert_equal "agent_abc", request[:json]["agent_id"]
    assert_equal 10, request[:json]["target_concurrency_limit"]
  end

  def test_conversational_ai_users_list_with_branch_id_and_sort_by
    @client.conversational_ai.users.list(
      agent_id: "agent_abc",
      branch_id: "branch_xyz",
      sort_by: "last_contact_unix_secs",
      page_size: 15
    )

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/convai/users", request[:path]
    assert_equal "agent_abc", request[:query]["agent_id"]
    assert_equal "branch_xyz", request[:query]["branch_id"]
    assert_equal "last_contact_unix_secs", request[:query]["sort_by"]
    assert_equal 15, request[:query]["page_size"]
    assert_nil request[:json]
  end

  def test_whatsapp_accounts_update_with_enable_audio_message_response
    @client.conversational_ai.whatsapp_accounts.update(
      "phone_123",
      assigned_agent_id: "agent_abc",
      enable_audio_message_response: true
    )

    request = @http.requests.last
    assert_equal "PATCH", request[:method]
    assert_equal "v1/convai/whatsapp-accounts/phone_123", request[:path]
    assert_equal "agent_abc", request[:json]["assigned_agent_id"]
    assert_equal true, request[:json]["enable_audio_message_response"]
  end

  def test_music_compose_with_respect_sections_durations
    @client.music.compose(
      prompt: "lofi chill beats",
      respect_sections_durations: true
    )

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/music", request[:path]
    assert_equal "lofi chill beats", request[:json]["prompt"]
    assert_equal true, request[:json]["respect_sections_durations"]
  end

  def test_speech_to_text_convert_with_no_verbatim
    file = ElevenLabs::Upload.from_io(StringIO.new("audio-bytes"), filename: "meeting.mp3", content_type: "audio/mpeg")

    @client.speech_to_text.convert(model_id: "scribe_v2", file: file, no_verbatim: true)

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/speech-to-text", request[:path]
    assert_equal "scribe_v2", request[:form]["model_id"]
    assert_equal true, request[:form]["no_verbatim"]
    # files includes both 'file' and 'additional_formats' entries
    assert_equal 2, request[:files].length
    assert_equal "file", request[:files].first[:name]
  end

  def test_workspace_groups_list
    @client.workspace.groups.list

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/workspace/groups", request[:path]
    assert_nil request[:json]
  end

  def test_workspace_invites_create_with_seat_type
    @client.workspace.invites.create(
      email: "teammate@example.com",
      seat_type: "creator"
    )

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/workspace/invites/add", request[:path]
    assert_equal "teammate@example.com", request[:json]["email"]
    assert_equal "creator", request[:json]["seat_type"]
  end

  # --- v0.4.0 tests: new namespaces/operations from Python SDK v2.40.0 ---

  def test_environment_variables_list
    @client.environment_variables.list(page_size: 10, label: "production")

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/convai/environment-variables", request[:path]
    assert_equal 10, request[:query]["page_size"]
    assert_equal "production", request[:query]["label"]
    assert_nil request[:json]
  end

  def test_environment_variables_create
    @client.environment_variables.create(
      request: { "label" => "API_KEY", "type" => "secret", "values" => { "production" => "sk-123" } }
    )

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/convai/environment-variables", request[:path]
    assert_equal "API_KEY", request[:json]["label"]
    assert_equal "secret", request[:json]["type"]
  end

  def test_environment_variables_get
    @client.environment_variables.get("envvar_abc")

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/convai/environment-variables/envvar_abc", request[:path]
    assert_nil request[:json]
  end

  def test_environment_variables_update
    @client.environment_variables.update(
      "envvar_abc",
      values: { "production" => "sk-456" }
    )

    request = @http.requests.last
    assert_equal "PATCH", request[:method]
    assert_equal "v1/convai/environment-variables/envvar_abc", request[:path]
    assert_equal({ "production" => "sk-456" }, request[:json]["values"])
  end

  def test_workspace_auth_connections_list
    @client.workspace.auth_connections.list

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/workspace/auth-connections", request[:path]
    assert_nil request[:json]
  end

  def test_workspace_auth_connections_create
    @client.workspace.auth_connections.create(
      request: { "type" => "oauth2", "label" => "My OAuth" }
    )

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/workspace/auth-connections", request[:path]
    assert_equal "oauth2", request[:json]["type"]
    assert_equal "My OAuth", request[:json]["label"]
  end

  def test_workspace_auth_connections_delete
    @client.workspace.auth_connections.delete("auth_conn_123")

    request = @http.requests.last
    assert_equal "DELETE", request[:method]
    assert_equal "v1/workspace/auth-connections/auth_conn_123", request[:path]
    assert_nil request[:json]
  end

  def test_knowledge_base_document_refresh
    @client.conversational_ai.knowledge_base.document.refresh("doc_123")

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/convai/knowledge-base/doc_123/refresh", request[:path]
    assert_nil request[:json]
  end

  def test_speech_to_text_convert_with_entity_redaction
    file = ElevenLabs::Upload.from_io(StringIO.new("audio-bytes"), filename: "call.mp3", content_type: "audio/mpeg")

    @client.speech_to_text.convert(
      model_id: "scribe_v2",
      file: file,
      entity_redaction: "pii",
      entity_redaction_mode: "redact"
    )

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/speech-to-text", request[:path]
    assert_equal "scribe_v2", request[:form]["model_id"]
    assert_equal "pii", request[:form]["entity_redaction"]
    assert_equal "redact", request[:form]["entity_redaction_mode"]
  end

  # --- New in v2.41.0 ---

  def test_conversations_analysis_run
    @client.conversational_ai.conversations.analysis.run("conv_123")

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/convai/conversations/conv_123/analysis/run", request[:path]
    assert_nil request[:json]
    assert_nil request[:form]
  end

  def test_music_video_to_music
    video = ElevenLabs::Upload.from_io(StringIO.new("video-bytes"), filename: "clip.mp4", content_type: "video/mp4")

    stream = @client.music.video_to_music(
      videos: [video],
      output_format: "mp3_44100_128",
      description: "upbeat background music",
      tags: "pop,energetic",
      sign_with_c_2_pa: true
    )

    assert_kind_of Enumerator, stream
    request = @http.requests.last
    assert_equal :stream, request[:kind]
    assert_equal "POST", request[:method]
    assert_equal "v1/music/video-to-music", request[:path]
    assert_equal({ "output_format" => "mp3_44100_128" }, request[:query])
    assert_equal({
      "description" => "upbeat background music",
      "tags" => "pop,energetic",
      "sign_with_c2pa" => true
    }, request[:form])
    assert_equal 1, request[:files].length
    assert_equal "videos", request[:files].first[:name]
  end

  def test_batch_calls_create_with_branch_and_environment
    @client.conversational_ai.batch_calls.create(
      call_name: "test-batch",
      agent_id: "agent_123",
      recipients: [{ "phone_number" => "+1234567890" }],
      branch_id: "branch_abc",
      environment: "staging"
    )

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/convai/batch-calling/submit", request[:path]
    json = request[:json]
    assert_equal "test-batch", json["call_name"]
    assert_equal "agent_123", json["agent_id"]
    assert_equal "branch_abc", json["branch_id"]
    assert_equal "staging", json["environment"]
  end

  def test_conversations_messages_text_search_with_sort_by
    @client.conversational_ai.conversations.messages.text_search(
      text_query: "hello",
      agent_id: "agent_123",
      sort_by: "created_at"
    )

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/convai/conversations/messages/text-search", request[:path]
    assert_equal "hello", request[:query]["text_query"]
    assert_equal "created_at", request[:query]["sort_by"]
  end

  def test_speech_to_text_convert_with_source_url
    @client.speech_to_text.convert(source_url: "https://example.com/audio.mp3")

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/speech-to-text", request[:path]
    assert_equal "https://example.com/audio.mp3", request[:form]["source_url"]
  end

  def test_text_to_speech_convert_with_avatar_context
    ctx = { "type" => "url", "url" => "https://example.com/avatar.png" }
    stream = @client.text_to_speech.convert("voice_123", text: "Hello", avatar_context: ctx)

    assert_kind_of Enumerator, stream
    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/text-to-speech/voice_123", request[:path]
    assert_equal "Hello", request[:json]["text"]
    assert_equal ctx, request[:json]["avatar_context"]
  end

  def test_text_to_dialogue_convert_with_avatar_context
    ctx = { "type" => "url", "url" => "https://example.com/avatar.png" }
    inputs = [{ "text" => "Hello", "voice_id" => "voice_123" }]
    stream = @client.text_to_dialogue.convert(inputs: inputs, output_format: "mp3_44100_128", avatar_context: ctx)

    assert_kind_of Enumerator, stream
    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/text-to-dialogue", request[:path]
    assert_equal inputs, request[:json]["inputs"]
    assert_equal ctx, request[:json]["avatar_context"]
  end

  def test_forced_alignment_create_no_longer_has_enabled_spooled_file
    audio = ElevenLabs::Upload.from_io(StringIO.new("audio-bytes"), filename: "audio.wav", content_type: "audio/wav")

    @client.forced_alignment.create(file: audio, text: "hello world")

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/forced-alignment", request[:path]
    assert_equal "hello world", request[:form]["text"]
    refute request[:form].key?("enabled_spooled_file"), "enabled_spooled_file should have been removed"
  end

  def test_pronunciation_dictionaries_rules_set
    rules = [
      { "type" => "phoneme", "string_to_replace" => "ElevenLabs", "phoneme" => "ɛlɛvənlæbz", "alphabet" => "ipa" }
    ]

    @client.pronunciation_dictionaries.rules.set("dict_123", rules: rules)

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/pronunciation-dictionaries/dict_123/set-rules", request[:path]
    assert_equal({ "rules" => rules }, request[:json])
    assert_nil request[:form]
  end
end
