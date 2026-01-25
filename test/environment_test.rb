require "test_helper"

class EnvironmentTest < Minitest::Test
  def test_resolve_returns_base_url_when_provided
    url = ElevenLabs::Environment.resolve(base_url: "https://custom.api.com")

    assert_equal "https://custom.api.com", url
  end

  def test_resolve_production_environment
    url = ElevenLabs::Environment.resolve(environment: :production)

    assert_equal "https://api.elevenlabs.io", url
  end

  def test_resolve_production_us_environment
    url = ElevenLabs::Environment.resolve(environment: :production_us)

    assert_equal "https://api.us.elevenlabs.io", url
  end

  def test_resolve_production_eu_environment
    url = ElevenLabs::Environment.resolve(environment: :production_eu)

    assert_equal "https://api.eu.residency.elevenlabs.io", url
  end

  def test_resolve_production_india_environment
    url = ElevenLabs::Environment.resolve(environment: :production_india)

    assert_equal "https://api.in.residency.elevenlabs.io", url
  end

  def test_resolve_raises_on_unknown_environment
    error = assert_raises(ArgumentError) do
      ElevenLabs::Environment.resolve(environment: :invalid)
    end

    assert_match(/Unknown environment :invalid/, error.message)
  end

  def test_base_url_takes_precedence_over_environment
    url = ElevenLabs::Environment.resolve(
      base_url: "https://custom.api.com",
      environment: :production_us
    )

    assert_equal "https://custom.api.com", url
  end
end
