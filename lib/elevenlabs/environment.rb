module ElevenLabs
  module Environment
    URLS = {
      production: "https://api.elevenlabs.io",
      production_us: "https://api.us.elevenlabs.io",
      production_eu: "https://api.eu.residency.elevenlabs.io",
      production_india: "https://api.in.residency.elevenlabs.io"
    }.freeze

    def self.resolve(base_url: nil, environment: :production)
      return base_url if base_url

      URLS.fetch(environment) do
        raise ArgumentError, "Unknown environment #{environment.inspect}"
      end
    end
  end
end
