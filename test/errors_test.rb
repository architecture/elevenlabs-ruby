require "test_helper"

class ErrorsTest < Minitest::Test
  def test_error_is_standard_error
    error = ElevenLabs::Error.new("test message")
    assert_kind_of StandardError, error
    assert_equal "test message", error.message
  end

  def test_http_error_attributes
    error = ElevenLabs::HTTPError.new(
      "Request failed",
      status: 404,
      body: '{"error": "not found"}',
      headers: { "content-type" => "application/json" }
    )

    assert_equal "Request failed", error.message
    assert_equal 404, error.status
    assert_equal '{"error": "not found"}', error.body
    assert_equal({ "content-type" => "application/json" }, error.headers)
  end

  def test_http_error_is_error
    error = ElevenLabs::HTTPError.new("test", status: 500, body: "", headers: {})
    assert_kind_of ElevenLabs::Error, error
    assert_kind_of StandardError, error
  end
end
