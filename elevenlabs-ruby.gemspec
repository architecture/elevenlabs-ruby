require_relative "lib/elevenlabs/version"

Gem::Specification.new do |spec|
  spec.name          = "elevenlabs"
  spec.version       = ElevenLabs::VERSION
  spec.authors       = ["Codex"]
  spec.email         = ["dev@elevenlabs.io"]
  spec.summary       = "Ruby SDK for the ElevenLabs API, generated from the public Python SDK."
  spec.description   = "A drop-in Ruby alternative to the official elevenlabs-python package with the same API surface."
  spec.homepage      = "https://github.com/elevenlabs/elevenlabs-ruby"
  spec.license       = "MIT"

  spec.files         = Dir.glob("lib/**/*") + %w[Gemfile elevenlabs-ruby.gemspec README.md]
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "faraday", ">= 2.0"
  spec.add_runtime_dependency "faraday-multipart", ">= 1.0"
  spec.add_runtime_dependency "json"

  spec.metadata["source_code_uri"] = spec.homepage
end
