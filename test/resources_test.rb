require "test_helper"

class ResourcesTest < Minitest::Test
  # --- Spec loading ---

  def test_spec_loaded_from_json
    assert_kind_of Hash, ElevenLabs::Resources::SPEC
    assert ElevenLabs::Resources::SPEC.key?(:operations)
    assert ElevenLabs::Resources::SPEC.key?(:children)
  end

  # --- Top-level resources ---

  def test_top_level_resources_returns_hash
    resources = ElevenLabs::Resources.top_level_resources
    assert_kind_of Hash, resources
    refute_empty resources
  end

  def test_top_level_resources_include_known_namespaces
    resources = ElevenLabs::Resources.top_level_resources
    %w[history voices text_to_speech models music dubbing user usage workspace].each do |name|
      assert resources.key?(name), "expected top_level_resources to include #{name}"
    end
  end

  # --- Class generation ---

  def test_class_for_returns_class_inheriting_base
    klass = ElevenLabs::Resources.class_for(["history"])
    assert klass, "expected class_for(['history']) to return a class"
    assert klass < ElevenLabs::Resources::Base, "expected class to inherit from Base"
  end

  def test_class_for_nested_resource
    klass = ElevenLabs::Resources.class_for(["conversational_ai"])
    assert klass, "expected class_for(['conversational_ai']) to return a class"

    # instantiate to check child accessor exists
    fake_http = Object.new
    instance = klass.new(fake_http)
    assert_respond_to instance, :agents
  end

  def test_class_for_unknown_path_returns_nil
    klass = ElevenLabs::Resources.class_for(["nonexistent_namespace_xyz"])
    assert_nil klass
  end

  # --- Operation methods generated ---

  def test_history_class_has_list_method
    klass = ElevenLabs::Resources.class_for(["history"])
    assert klass.method_defined?(:list), "expected History resource to have list method"
  end

  def test_voices_class_has_get_all_method
    klass = ElevenLabs::Resources.class_for(["voices"])
    assert klass.method_defined?(:get_all), "expected Voices resource to have get_all method"
  end

  def test_text_to_speech_class_has_convert_method
    klass = ElevenLabs::Resources.class_for(["text_to_speech"])
    assert klass.method_defined?(:convert), "expected TextToSpeech resource to have convert method"
  end

  def test_models_class_has_list_method
    klass = ElevenLabs::Resources.class_for(["models"])
    assert klass.method_defined?(:list), "expected Models resource to have list method"
  end

  # --- Child resource accessors ---

  def test_child_resources_accessible
    klass = ElevenLabs::Resources.class_for(["workspace"])
    fake_http = Object.new
    instance = klass.new(fake_http)

    assert_respond_to instance, :members
    assert_respond_to instance, :invites
    assert_respond_to instance, :groups
    assert_respond_to instance, :auth_connections
  end

  def test_environment_variables_class_has_operations
    klass = ElevenLabs::Resources.class_for(["environment_variables"])
    assert klass, "expected class_for(['environment_variables']) to return a class"
    %i[list create get update].each do |method|
      assert klass.method_defined?(method), "expected environment_variables to have #{method} method"
    end
  end

  def test_workspace_auth_connections_class_has_operations
    klass = ElevenLabs::Resources.class_for(["workspace", "auth_connections"])
    assert klass, "expected class_for(['workspace', 'auth_connections']) to return a class"
    %i[list create delete].each do |method|
      assert klass.method_defined?(method), "expected workspace.auth_connections to have #{method} method"
    end
  end

  def test_knowledge_base_document_class_has_refresh
    klass = ElevenLabs::Resources.class_for(["conversational_ai", "knowledge_base", "document"])
    assert klass, "expected class_for(['conversational_ai', 'knowledge_base', 'document']) to return a class"
    assert klass.method_defined?(:refresh), "expected knowledge_base.document to have refresh method"
  end

  def test_child_resource_caching
    klass = ElevenLabs::Resources.class_for(["workspace"])
    fake_http = Object.new
    instance = klass.new(fake_http)

    members1 = instance.members
    members2 = instance.members
    assert_same members1, members2, "expected child resources to be cached"
  end

  # --- Deep nesting ---

  def test_deeply_nested_resource_accessible
    klass = ElevenLabs::Resources.class_for(["conversational_ai"])
    fake_http = Object.new
    instance = klass.new(fake_http)

    agents = instance.agents
    assert_respond_to agents, :knowledge_base
  end

  # --- Operation constant stored ---

  def test_operation_spec_stored_as_constant
    klass = ElevenLabs::Resources.class_for(["history"])
    constants = klass.constants.select { |c| c.to_s.start_with?("OPERATION_") }
    refute_empty constants, "expected operation constants to be defined"

    spec = klass.const_get(constants.first)
    assert_kind_of Hash, spec
    assert spec.key?(:request), "expected operation spec to have :request key"
  end

  # --- Root operations ---

  def test_root_operations_returns_array
    ops = ElevenLabs::Resources.root_operations
    assert_kind_of Array, ops
  end
end

class ClientIntegrationTest < Minitest::Test
  # --- All top-level resource accessors ---

  def setup
    @client = ElevenLabs::Client.new(api_key: "test")
  end

  def test_all_top_level_namespaces_accessible
    expected = %w[
      audio_isolation audio_native conversational_ai dubbing
      environment_variables forced_alignment history models music
      productions pronunciation_dictionaries samples service_accounts
      speech_engine speech_to_speech speech_to_text studio text_to_dialogue
      text_to_sound_effects text_to_speech text_to_voice tokens usage user
      voices webhooks workspace workspaces
    ]

    expected.each do |name|
      assert_respond_to @client, name, "expected client to respond to #{name}"
      resource = @client.send(name)
      assert_kind_of ElevenLabs::Resources::Base, resource, "expected #{name} to be a Resource::Base"
    end
  end

  def test_resource_caching_across_all_namespaces
    %w[history voices models user].each do |name|
      first = @client.send(name)
      second = @client.send(name)
      assert_same first, second, "expected #{name} to be cached"
    end
  end

  # --- New in v2.41.0 ---

  def test_conversations_analysis_child_accessible
    klass = ElevenLabs::Resources.class_for(["conversational_ai", "conversations"])
    fake_http = Object.new
    instance = klass.new(fake_http)

    assert_respond_to instance, :analysis
  end

  def test_conversations_analysis_has_run_method
    klass = ElevenLabs::Resources.class_for(["conversational_ai", "conversations", "analysis"])
    assert klass, "expected analysis resource class to exist"
    assert klass.method_defined?(:run), "expected Analysis resource to have run method"
  end

  def test_music_has_video_to_music_method
    klass = ElevenLabs::Resources.class_for(["music"])
    assert klass.method_defined?(:video_to_music), "expected Music resource to have video_to_music method"
  end

  def test_client_with_custom_environment
    client = ElevenLabs::Client.new(api_key: "test", environment: :production_eu)
    assert_kind_of ElevenLabs::HTTPClient, client.http_client
  end

  def test_client_with_custom_base_url
    client = ElevenLabs::Client.new(api_key: "test", base_url: "https://custom.api.com")
    assert_kind_of ElevenLabs::HTTPClient, client.http_client
  end

  def test_client_with_custom_executor
    fake_http = Object.new
    fake_executor = Object.new
    client = ElevenLabs::Client.new(http_client: fake_http, executor: fake_executor)
    assert_equal fake_http, client.http_client
  end

  # --- New in v2.44.0 ---

  def test_conversations_topics_child_accessible
    klass = ElevenLabs::Resources.class_for(["conversational_ai", "conversations"])
    fake_http = Object.new
    instance = klass.new(fake_http)

    assert_respond_to instance, :topics
  end

  def test_conversations_topics_has_get_method
    klass = ElevenLabs::Resources.class_for(["conversational_ai", "conversations", "topics"])
    assert klass, "expected topics resource class to exist"
    assert klass.method_defined?(:get), "expected topics resource to have get method"
  end

  def test_knowledge_base_has_search_method
    klass = ElevenLabs::Resources.class_for(["conversational_ai", "knowledge_base"])
    assert klass.method_defined?(:search), "expected knowledge_base to have search method"
  end

  def test_secrets_has_get_and_get_dependencies_methods
    klass = ElevenLabs::Resources.class_for(["conversational_ai", "secrets"])
    %i[get get_dependencies].each do |m|
      assert klass.method_defined?(m), "expected secrets to have #{m} method"
    end
  end

  def test_tests_has_move_method
    klass = ElevenLabs::Resources.class_for(["conversational_ai", "tests"])
    assert klass.method_defined?(:move), "expected tests resource to have move method"
  end

  def test_tests_folders_child_accessible_with_crud
    klass = ElevenLabs::Resources.class_for(["conversational_ai", "tests"])
    fake_http = Object.new
    instance = klass.new(fake_http)
    assert_respond_to instance, :folders

    folders_klass = ElevenLabs::Resources.class_for(["conversational_ai", "tests", "folders"])
    %i[create get update delete].each do |m|
      assert folders_klass.method_defined?(m), "expected tests.folders to have #{m} method"
    end
  end

  def test_tools_executions_child_accessible
    klass = ElevenLabs::Resources.class_for(["conversational_ai", "tools"])
    fake_http = Object.new
    instance = klass.new(fake_http)
    assert_respond_to instance, :executions

    exec_klass = ElevenLabs::Resources.class_for(["conversational_ai", "tools", "executions"])
    assert exec_klass.method_defined?(:get), "expected tools.executions to have get method"
  end

  def test_workspace_usage_child_accessible
    klass = ElevenLabs::Resources.class_for(["workspace"])
    fake_http = Object.new
    instance = klass.new(fake_http)
    assert_respond_to instance, :usage

    usage_klass = ElevenLabs::Resources.class_for(["workspace", "usage"])
    assert usage_klass.method_defined?(:get_usage_by_product_over_time),
           "expected workspace.usage to have get_usage_by_product_over_time method"
  end

  # --- New in v2.53.0 ---

  def test_productions_orders_child_accessible_with_crud
    klass = ElevenLabs::Resources.class_for(["productions"])
    fake_http = Object.new
    instance = klass.new(fake_http)
    assert_respond_to instance, :orders

    orders_klass = ElevenLabs::Resources.class_for(["productions", "orders"])
    %i[list create get update submit].each do |m|
      assert orders_klass.method_defined?(m), "expected productions.orders to have #{m} method"
    end
  end

  def test_productions_orders_grandchildren_accessible
    klass = ElevenLabs::Resources.class_for(["productions", "orders"])
    fake_http = Object.new
    instance = klass.new(fake_http)
    %i[items media languages deliverables].each do |child|
      assert_respond_to instance, child
    end

    items_klass = ElevenLabs::Resources.class_for(["productions", "orders", "items"])
    %i[upsert remove].each do |m|
      assert items_klass.method_defined?(m), "expected productions.orders.items to have #{m} method"
    end

    media_klass = ElevenLabs::Resources.class_for(["productions", "orders", "media"])
    %i[register get].each do |m|
      assert media_klass.method_defined?(m), "expected productions.orders.media to have #{m} method"
    end
  end

  def test_speech_engine_class_has_crud
    klass = ElevenLabs::Resources.class_for(["speech_engine"])
    assert klass, "expected class_for(['speech_engine']) to return a class"
    %i[list create get delete update].each do |m|
      assert klass.method_defined?(m), "expected speech_engine to have #{m} method"
    end
  end

  def test_workspaces_api_keys_child_accessible
    klass = ElevenLabs::Resources.class_for(["workspaces"])
    fake_http = Object.new
    instance = klass.new(fake_http)
    assert_respond_to instance, :api_keys

    api_keys_klass = ElevenLabs::Resources.class_for(["workspaces", "api_keys"])
    assert api_keys_klass.method_defined?(:disable), "expected workspaces.api_keys to have disable method"
  end

  def test_audio_isolation_history_methods
    klass = ElevenLabs::Resources.class_for(["audio_isolation"])
    %i[list delete].each do |m|
      assert klass.method_defined?(m), "expected audio_isolation to have #{m} method"
    end
  end

  def test_conversations_tags_child_accessible_with_crud
    klass = ElevenLabs::Resources.class_for(["conversational_ai", "conversations"])
    fake_http = Object.new
    instance = klass.new(fake_http)
    assert_respond_to instance, :tags

    tags_klass = ElevenLabs::Resources.class_for(["conversational_ai", "conversations", "tags"])
    %i[list create get update delete assign unassign].each do |m|
      assert tags_klass.method_defined?(m), "expected conversations.tags to have #{m} method"
    end
  end

  def test_agents_versions_child_accessible
    klass = ElevenLabs::Resources.class_for(["conversational_ai", "agents", "versions"])
    assert klass, "expected agents.versions resource class to exist"
    assert klass.method_defined?(:get), "expected agents.versions to have get method"
  end

  def test_knowledge_base_documents_chunks_child_accessible
    klass = ElevenLabs::Resources.class_for(["conversational_ai", "knowledge_base", "documents", "chunks"])
    assert klass, "expected knowledge_base.documents.chunks resource class to exist"
    assert klass.method_defined?(:list), "expected knowledge_base.documents.chunks to have list method"
  end

  def test_exotel_child_accessible
    klass = ElevenLabs::Resources.class_for(["conversational_ai", "exotel"])
    assert klass, "expected conversational_ai.exotel resource class to exist"
    assert klass.method_defined?(:outbound_call), "expected exotel to have outbound_call method"
  end

  def test_workspace_audit_logs_child_accessible
    klass = ElevenLabs::Resources.class_for(["workspace"])
    fake_http = Object.new
    instance = klass.new(fake_http)
    assert_respond_to instance, :audit_logs

    audit_klass = ElevenLabs::Resources.class_for(["workspace", "audit_logs"])
    assert audit_klass.method_defined?(:list), "expected workspace.audit_logs to have list method"
  end

  # --- New in v2.59.0 ---

  def test_dubbing_project_child_accessible
    klass = ElevenLabs::Resources.class_for(["dubbing"])
    instance = klass.new(Object.new)
    assert_respond_to instance, :project

    project = ElevenLabs::Resources.class_for(["dubbing", "project"])
    assert project, "expected dubbing.project resource class to exist"
    %i[create list get delete].each do |m|
      assert project.method_defined?(m), "expected dubbing.project to have #{m} method"
    end
  end

  def test_dubbing_project_nested_transcript_resources
    language = ElevenLabs::Resources.class_for(["dubbing", "project", "language"])
    assert language, "expected dubbing.project.language resource class to exist"
    %i[create list get delete].each do |m|
      assert language.method_defined?(m), "expected dubbing.project.language to have #{m} method"
    end

    lang_transcript = ElevenLabs::Resources.class_for(["dubbing", "project", "language", "transcript"])
    assert lang_transcript, "expected dubbing.project.language.transcript resource class to exist"
    %i[get regenerate update_segment].each do |m|
      assert lang_transcript.method_defined?(m), "expected language.transcript to have #{m} method"
    end

    transcript = ElevenLabs::Resources.class_for(["dubbing", "project", "transcript"])
    assert transcript, "expected dubbing.project.transcript resource class to exist"
    %i[get create_segment update_segment delete_segment].each do |m|
      assert transcript.method_defined?(m), "expected project.transcript to have #{m} method"
    end
  end

  def test_music_finetunes_child_accessible
    instance = ElevenLabs::Resources.class_for(["music"]).new(Object.new)
    assert_respond_to instance, :finetunes

    klass = ElevenLabs::Resources.class_for(["music", "finetunes"])
    assert klass, "expected music.finetunes resource class to exist"
    %i[create list get update delete].each do |m|
      assert klass.method_defined?(m), "expected music.finetunes to have #{m} method"
    end
  end

  def test_music_has_compose_detailed_stream_method
    klass = ElevenLabs::Resources.class_for(["music"])
    assert klass.method_defined?(:compose_detailed_stream),
           "expected Music resource to have compose_detailed_stream method"
  end

  def test_workspace_members_and_service_accounts_operations
    members = ElevenLabs::Resources.class_for(["workspace", "members"])
    assert members.method_defined?(:list), "expected workspace.members to have list method"

    service_accounts = ElevenLabs::Resources.class_for(["service_accounts"])
    assert service_accounts.method_defined?(:create), "expected service_accounts to have create method"
  end

  def test_conversations_has_resolve_method
    klass = ElevenLabs::Resources.class_for(["conversational_ai", "conversations"])
    assert klass.method_defined?(:resolve), "expected conversations to have resolve method"
  end

  # Removed upstream in v2.59.0 — the root operation should no longer exist.
  def test_save_a_voice_preview_removed
    refute_respond_to @client, :save_a_voice_preview,
                      "expected save_a_voice_preview to be gone after the v2.59.0 spec refresh"
  end

  # --- v2.65.0 spec refresh: new namespaces ---

  def test_assets_namespace_accessible_with_crud
    assert ElevenLabs::Resources.top_level_resources.key?("assets"),
           "expected assets to be a top-level namespace"

    klass = ElevenLabs::Resources.class_for(["assets"])
    assert klass, "expected assets resource class to exist"
    %i[create list get delete].each do |m|
      assert klass.method_defined?(m), "expected assets to have #{m} method"
    end
  end

  def test_flows_namespace_and_children_accessible
    assert ElevenLabs::Resources.top_level_resources.key?("flows"),
           "expected flows to be a top-level namespace"

    instance = ElevenLabs::Resources.class_for(["flows"]).new(Object.new)
    %i[image text_to_speech video].each do |child|
      assert_respond_to instance, child
    end

    %w[image text_to_speech video].each do |child|
      klass = ElevenLabs::Resources.class_for(["flows", child])
      assert klass, "expected flows.#{child} resource class to exist"
      %i[create list get].each do |m|
        assert klass.method_defined?(m), "expected flows.#{child} to have #{m} method"
      end
    end
  end

  def test_voices_accents_child_accessible
    instance = ElevenLabs::Resources.class_for(["voices"]).new(Object.new)
    assert_respond_to instance, :accents

    klass = ElevenLabs::Resources.class_for(["voices", "accents"])
    assert klass, "expected voices.accents resource class to exist"
    assert klass.method_defined?(:get), "expected voices.accents to have get method"
  end

  def test_voices_has_replicate_to_isolated_environment_method
    klass = ElevenLabs::Resources.class_for(["voices"])
    assert klass.method_defined?(:replicate_to_isolated_environment),
           "expected voices to have replicate_to_isolated_environment method"
  end

  def test_triage_tickets_child_accessible
    instance = ElevenLabs::Resources.class_for(["conversational_ai"]).new(Object.new)
    assert_respond_to instance, :triage_tickets

    klass = ElevenLabs::Resources.class_for(["conversational_ai", "triage_tickets"])
    assert klass, "expected conversational_ai.triage_tickets resource class to exist"
    %i[create create_manual list get update delete add_comment add_turn_comment
       list_assignable_users].each do |m|
      assert klass.method_defined?(m), "expected triage_tickets to have #{m} method"
    end
  end

  def test_agents_procedures_and_drafts_accessible
    instance = ElevenLabs::Resources.class_for(["conversational_ai", "agents"]).new(Object.new)
    assert_respond_to instance, :procedures

    procedures = ElevenLabs::Resources.class_for(["conversational_ai", "agents", "procedures"])
    assert procedures, "expected agents.procedures resource class to exist"
    %i[create list get remove compile].each do |m|
      assert procedures.method_defined?(m), "expected agents.procedures to have #{m} method"
    end

    drafts = ElevenLabs::Resources.class_for(["conversational_ai", "agents", "procedures", "drafts"])
    assert drafts, "expected agents.procedures.drafts resource class to exist"
    %i[get update delete].each do |m|
      assert drafts.method_defined?(m), "expected procedures.drafts to have #{m} method"
    end
  end

  def test_knowledge_base_crawl_jobs_child_accessible
    instance = ElevenLabs::Resources.class_for(["conversational_ai", "knowledge_base"]).new(Object.new)
    assert_respond_to instance, :crawl_jobs

    klass = ElevenLabs::Resources.class_for(["conversational_ai", "knowledge_base", "crawl_jobs"])
    assert klass, "expected knowledge_base.crawl_jobs resource class to exist"
    %i[create list get cancel].each do |m|
      assert klass.method_defined?(m), "expected crawl_jobs to have #{m} method"
    end
  end

  def test_new_operations_on_existing_namespaces
    conversations = ElevenLabs::Resources.class_for(["conversational_ai", "conversations"])
    assert conversations.method_defined?(:get_summary),
           "expected conversations to have get_summary method"

    batch_calls = ElevenLabs::Resources.class_for(["conversational_ai", "batch_calls"])
    assert batch_calls.method_defined?(:export), "expected batch_calls to have export method"

    documents = ElevenLabs::Resources.class_for(["conversational_ai", "knowledge_base", "documents"])
    %i[bulk_delete get_bulk_agents].each do |m|
      assert documents.method_defined?(m), "expected knowledge_base.documents to have #{m} method"
    end

    lang_transcript = ElevenLabs::Resources.class_for(["dubbing", "project", "language", "transcript"])
    assert lang_transcript.method_defined?(:update_segments),
           "expected language.transcript to have update_segments method"

    transcript = ElevenLabs::Resources.class_for(["dubbing", "project", "transcript"])
    assert transcript.method_defined?(:update_segments),
           "expected project.transcript to have update_segments method"
  end
end
