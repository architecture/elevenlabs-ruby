require "test_helper"

class ClientTest < Minitest::Test
  def test_client_initialization_with_api_key
    client = ElevenLabs::Client.new(api_key: "test_key")

    assert_kind_of ElevenLabs::HTTPClient, client.http_client
  end

  def test_client_initialization_with_custom_http_client
    custom_http = Object.new
    client = ElevenLabs::Client.new(http_client: custom_http)

    assert_equal custom_http, client.http_client
  end

  def test_client_has_resource_accessors
    client = ElevenLabs::Client.new(api_key: "test")

    # Test a few common resource accessors
    assert_respond_to client, :history
    assert_respond_to client, :voices
    assert_respond_to client, :text_to_speech
    assert_respond_to client, :models
  end

  def test_client_resource_caching
    client = ElevenLabs::Client.new(api_key: "test")

    history1 = client.history
    history2 = client.history

    assert_same history1, history2, "Expected resources to be cached"
  end
end
