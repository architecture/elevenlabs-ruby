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
      pronunciation_dictionaries samples service_accounts speech_to_speech
      speech_to_text studio text_to_dialogue text_to_sound_effects
      text_to_speech text_to_voice tokens usage user voices webhooks
      workspace
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
end
