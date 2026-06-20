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

  def test_conversations_topics_get
    @client.conversational_ai.conversations.topics.get("agent_123")

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/convai/agents/agent_123/topics", request[:path]
  end

  def test_knowledge_base_search
    @client.conversational_ai.knowledge_base.search(query: "pricing", page_size: 20)

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/convai/knowledge-base/search", request[:path]
    assert_equal({ "query" => "pricing", "page_size" => 20 }, request[:query])
  end

  def test_secrets_get
    @client.conversational_ai.secrets.get("secret_123")

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/convai/secrets/secret_123", request[:path]
  end

  def test_secrets_get_dependencies
    @client.conversational_ai.secrets.get_dependencies("secret_123", "agents", page_size: 10, cursor: "abc")

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/convai/secrets/secret_123/dependencies/agents", request[:path]
    assert_equal({ "page_size" => 10, "cursor" => "abc" }, request[:query])
  end

  def test_tests_move_bulk
    @client.conversational_ai.tests.move(entity_ids: ["t1", "t2"], move_to: "folder_abc")

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/convai/agent-testing/bulk-move", request[:path]
    assert_equal({ "entity_ids" => ["t1", "t2"], "move_to" => "folder_abc" }, request[:json])
  end

  def test_tests_folders_create
    @client.conversational_ai.tests.folders.create(name: "My Folder", parent_folder_id: "parent_abc")

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/convai/agent-testing/folders", request[:path]
    assert_equal({ "name" => "My Folder", "parent_folder_id" => "parent_abc" }, request[:json])
  end

  def test_tests_folders_get
    @client.conversational_ai.tests.folders.get("folder_123")

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/convai/agent-testing/folders/folder_123", request[:path]
  end

  def test_tests_folders_delete_with_force
    @client.conversational_ai.tests.folders.delete("folder_123", force: true)

    request = @http.requests.last
    assert_equal "DELETE", request[:method]
    assert_equal "v1/convai/agent-testing/folders/folder_123", request[:path]
    assert_equal({ "force" => true }, request[:query])
  end

  def test_tests_folders_update
    @client.conversational_ai.tests.folders.update("folder_123", name: "Renamed")

    request = @http.requests.last
    assert_equal "PATCH", request[:method]
    assert_equal "v1/convai/agent-testing/folders/folder_123", request[:path]
    assert_equal({ "name" => "Renamed" }, request[:json])
  end

  def test_tools_executions_get
    @client.conversational_ai.tools.executions.get("tool_123", page_size: 50, is_error: false)

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/convai/tools/tool_123/executions", request[:path]
    assert_equal({ "page_size" => 50, "is_error" => false }, request[:query])
  end

  def test_workspace_usage_by_product_over_time
    @client.workspace.usage.get_usage_by_product_over_time(
      start_time: 1700000000,
      end_time: 1700100000,
      interval_seconds: 3600,
      group_by: ["product"],
      filters: { "product" => "tts" }
    )

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/workspace/analytics/query/usage-by-product-over-time", request[:path]
    assert_equal(
      {
        "start_time" => 1700000000,
        "end_time" => 1700100000,
        "interval_seconds" => 3600,
        "group_by" => ["product"],
        "filters" => { "product" => "tts" }
      },
      request[:json]
    )
  end

  def test_agents_branches_merge_accepts_force
    @client.conversational_ai.agents.branches.merge(
      "agent_123",
      "src_branch",
      target_branch_id: "dst_branch",
      archive_source_branch: true,
      force: true
    )

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/convai/agents/agent_123/branches/src_branch/merge", request[:path]
    assert_equal({ "target_branch_id" => "dst_branch" }, request[:query])
    assert_equal({ "archive_source_branch" => true, "force" => true }, request[:json])
  end

  def test_conversations_list_accepts_topic_ids
    @client.conversational_ai.conversations.list(topic_ids: ["t1", "t2"])

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/convai/conversations", request[:path]
    assert_equal ["t1", "t2"], request[:query]["topic_ids"]
  end

  # --- New in v2.53.0 ---

  def test_productions_orders_list
    @client.productions.orders.list(page_size: 25, status: "open")

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/productions/orders", request[:path]
    assert_equal({ "page_size" => 25, "status" => "open" }, request[:query])
  end

  def test_productions_orders_create
    @client.productions.orders.create(request: { "name" => "My Order" })

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/productions/orders", request[:path]
    assert_equal({ "name" => "My Order" }, request[:json])
  end

  def test_productions_orders_update_nests_under_request_key
    @client.productions.orders.update("order_123", request: { "name" => "Renamed" })

    request = @http.requests.last
    assert_equal "PATCH", request[:method]
    assert_equal "v1/productions/orders/order_123", request[:path]
    assert_equal({ "request" => { "name" => "Renamed" } }, request[:json])
  end

  def test_productions_orders_submit
    @client.productions.orders.submit("order_123")

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/productions/orders/order_123/submit", request[:path]
  end

  def test_productions_orders_items_remove
    @client.productions.orders.items.remove("order_123", "item_456")

    request = @http.requests.last
    assert_equal "DELETE", request[:method]
    assert_equal "v1/productions/orders/order_123/items/item_456", request[:path]
  end

  def test_productions_orders_media_register_multipart
    media = ElevenLabs::Upload.from_io(StringIO.new("clip-bytes"), filename: "clip.wav", content_type: "audio/wav")

    @client.productions.orders.media.register("order_123", declared_language: "en", media: media)

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/productions/orders/order_123/media", request[:path]
    assert_equal({ "declared_language" => "en" }, request[:form])
    entry = request[:files].find { |f| f[:name] == "media" }
    assert entry, "expected a media file entry"
    assert_equal media, entry[:value]
  end

  def test_productions_orders_languages_list
    @client.productions.orders.languages.list("dubbing")

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/productions/orders/languages/dubbing", request[:path]
  end

  def test_speech_engine_list
    @client.speech_engine.list(page_size: 10, search: "demo")

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/speech-engine", request[:path]
    assert_equal({ "page_size" => 10, "search" => "demo" }, request[:query])
  end

  def test_speech_engine_create
    @client.speech_engine.create(name: "My Engine", tags: ["beta"])

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/speech-engine", request[:path]
    assert_equal({ "name" => "My Engine", "tags" => ["beta"] }, request[:json])
  end

  def test_speech_engine_get_and_delete
    @client.speech_engine.get("eng_123")
    get_request = @http.requests.last
    assert_equal "GET", get_request[:method]
    assert_equal "v1/speech-engine/eng_123", get_request[:path]

    @client.speech_engine.delete("eng_123")
    del_request = @http.requests.last
    assert_equal "DELETE", del_request[:method]
    assert_equal "v1/speech-engine/eng_123", del_request[:path]
  end

  def test_workspaces_api_keys_disable
    @client.workspaces.api_keys.disable(api_key_name: "ci-bot")

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/workspaces/api-keys/disable", request[:path]
    assert_equal({ "api_key_name" => "ci-bot" }, request[:query])
  end

  def test_audio_isolation_history_list
    @client.audio_isolation.list(page_size: 5, search: "noise")

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/audio-isolation/history", request[:path]
    assert_equal({ "page_size" => 5, "search" => "noise" }, request[:query])
  end

  def test_audio_isolation_history_delete
    @client.audio_isolation.delete("hist_123")

    request = @http.requests.last
    assert_equal "DELETE", request[:method]
    assert_equal "v1/audio-isolation/history/hist_123", request[:path]
  end

  def test_conversations_tags_create
    @client.conversational_ai.conversations.tags.create(title: "VIP", description: "High-value callers")

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/convai/tags", request[:path]
    assert_equal({ "title" => "VIP", "description" => "High-value callers" }, request[:json])
  end

  def test_conversations_tags_assign
    @client.conversational_ai.conversations.tags.assign("conv_123", tag_ids: ["tag_a", "tag_b"])

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/convai/conversations/conv_123/tags", request[:path]
    assert_equal({ "tag_ids" => ["tag_a", "tag_b"] }, request[:json])
  end

  def test_conversations_tags_unassign
    @client.conversational_ai.conversations.tags.unassign("conv_123", "tag_a")

    request = @http.requests.last
    assert_equal "DELETE", request[:method]
    assert_equal "v1/convai/conversations/conv_123/tags/tag_a", request[:path]
  end

  def test_conversations_get_sip_messages
    @client.conversational_ai.conversations.get_sip_messages("conv_123", page_size: 50)

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/convai/conversations/conv_123/sip-messages", request[:path]
    assert_equal({ "page_size" => 50 }, request[:query])
  end

  def test_conversations_analysis_run_evaluation
    @client.conversational_ai.conversations.analysis.run_evaluation(
      "conv_123",
      evaluation_id: "eval_456",
      scope: "conversation"
    )

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/convai/conversations/conv_123/analysis/evaluations/run", request[:path]
    assert_equal({ "evaluation_id" => "eval_456", "scope" => "conversation" }, request[:json])
  end

  def test_agents_versions_get
    @client.conversational_ai.agents.versions.get("agent_123", "ver_456")

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/convai/agents/agent_123/versions/ver_456", request[:path]
  end

  def test_knowledge_base_documents_chunks_list
    @client.conversational_ai.knowledge_base.documents.chunks.list("doc_123", page_size: 30)

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/convai/knowledge-base/doc_123/chunks", request[:path]
    assert_equal({ "page_size" => 30 }, request[:query])
  end

  def test_knowledge_base_document_update_file_multipart
    file = ElevenLabs::Upload.from_io(StringIO.new("doc-bytes"), filename: "doc.pdf", content_type: "application/pdf")

    @client.conversational_ai.knowledge_base.document.update_file("doc_123", file: file)

    request = @http.requests.last
    assert_equal "PATCH", request[:method]
    assert_equal "v1/convai/knowledge-base/doc_123/update-file", request[:path]
    entry = request[:files].find { |f| f[:name] == "file" }
    assert entry, "expected a file entry"
    assert_equal file, entry[:value]
  end

  def test_phone_numbers_get_sip_messages
    @client.conversational_ai.phone_numbers.get_sip_messages("phone_123", cursor: "abc")

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/convai/phone-numbers/phone_123/sip-messages", request[:path]
    assert_equal({ "cursor" => "abc" }, request[:query])
  end

  def test_exotel_outbound_call
    @client.conversational_ai.exotel.outbound_call(
      agent_id: "agent_123",
      agent_phone_number_id: "pn_456",
      to_number: "+15551234567"
    )

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/convai/exotel/outbound-call", request[:path]
    assert_equal(
      {
        "agent_id" => "agent_123",
        "agent_phone_number_id" => "pn_456",
        "to_number" => "+15551234567"
      },
      request[:json]
    )
  end

  def test_workspace_audit_logs_list
    @client.workspace.audit_logs.list(limit: 100, class_name: "Voice")

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/workspace/audit-logs", request[:path]
    assert_equal({ "limit" => 100, "class_name" => "Voice" }, request[:query])
  end

  def test_workspace_analytics_requests_get
    @client.workspace.analytics.requests.get(start_time: 1700000000, end_time: 1700100000, limit: 50)

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/workspace/analytics/requests", request[:path]
    assert_equal({ "start_time" => 1700000000, "end_time" => 1700100000, "limit" => 50 }, request[:json])
  end

  def test_workspace_auth_connections_update
    @client.workspace.auth_connections.update("conn_123", request: { "enabled" => false })

    request = @http.requests.last
    assert_equal "PATCH", request[:method]
    assert_equal "v1/workspace/auth-connections/conn_123", request[:path]
    assert_equal({ "enabled" => false }, request[:json])
  end

  # --- New in v2.53.0 (per-operation serialization completeness) ---

  def test_conversations_tags_list
    @client.conversational_ai.conversations.tags.list(page_size: 20, cursor: "abc")

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/convai/tags", request[:path]
    assert_equal({ "page_size" => 20, "cursor" => "abc" }, request[:query])
  end

  def test_conversations_tags_get
    @client.conversational_ai.conversations.tags.get("tag_123")

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/convai/tags/tag_123", request[:path]
  end

  def test_conversations_tags_update
    @client.conversational_ai.conversations.tags.update("tag_123", title: "Renamed", description: "Updated")

    request = @http.requests.last
    assert_equal "PATCH", request[:method]
    assert_equal "v1/convai/tags/tag_123", request[:path]
    assert_equal({ "title" => "Renamed", "description" => "Updated" }, request[:json])
  end

  def test_conversations_tags_delete
    @client.conversational_ai.conversations.tags.delete("tag_123")

    request = @http.requests.last
    assert_equal "DELETE", request[:method]
    assert_equal "v1/convai/tags/tag_123", request[:path]
  end

  def test_productions_orders_get
    @client.productions.orders.get("order_123")

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/productions/orders/order_123", request[:path]
  end

  def test_productions_orders_deliverables_list
    @client.productions.orders.deliverables.list("order_123")

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/productions/orders/order_123/deliverables", request[:path]
  end

  def test_productions_orders_items_upsert_nests_under_request_key
    @client.productions.orders.items.upsert("order_123", request: { "items" => [{ "kind" => "dubbing" }] })

    request = @http.requests.last
    assert_equal "POST", request[:method]
    assert_equal "v1/productions/orders/order_123/items", request[:path]
    assert_equal({ "request" => { "items" => [{ "kind" => "dubbing" }] } }, request[:json])
  end

  def test_productions_orders_media_get
    @client.productions.orders.media.get("order_123", "media_456")

    request = @http.requests.last
    assert_equal "GET", request[:method]
    assert_equal "v1/productions/orders/order_123/media/media_456", request[:path]
  end

  def test_speech_engine_update
    @client.speech_engine.update("eng_123", name: "Renamed", tags: ["prod"])

    request = @http.requests.last
    assert_equal "PATCH", request[:method]
    assert_equal "v1/speech-engine/eng_123", request[:path]
    assert_equal({ "name" => "Renamed", "tags" => ["prod"] }, request[:json])
  end

  # Regression: phone_numbers.list returns a bare top-level array from the API.
  # The gem performs no response typing, so the executor must hand that array
  # back to the caller unchanged (object-identical) — it must not wrap it in a
  # Hash or otherwise coerce the shape.
  def test_phone_numbers_list_returns_response_untouched
    array_response = [
      { "phone_number_id" => "pn_1", "provider" => "twilio" },
      { "phone_number_id" => "pn_2", "provider" => "twilio" }
    ]
    http = Class.new do
      define_method(:request) { |**_kwargs| array_response }
      def stream(**_kwargs); end
    end.new
    client = ElevenLabs::Client.new(api_key: "test", http_client: http)

    result = client.conversational_ai.phone_numbers.list

    assert_same array_response, result, "expected the bare array response to pass through untouched"
  end
end
