require "json"

require_relative "elevenlabs/version"
require_relative "elevenlabs/environment"
require_relative "elevenlabs/errors"
require_relative "elevenlabs/utils"
require_relative "elevenlabs/upload"
require_relative "elevenlabs/http_client"
require_relative "elevenlabs/operation_executor"
require_relative "elevenlabs/resources"
require_relative "elevenlabs/client"

module ElevenLabs
  # Sentinel used to differentiate between omitted optional parameters and those explicitly set to nil.
  OMIT = Utils::OMIT
end
