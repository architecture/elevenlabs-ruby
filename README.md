# ElevenLabs Ruby SDK

This gem mirrors the public interface of [elevenlabs-python](https://github.com/elevenlabs/elevenlabs-python) and provides a Ruby-native client with the same resource tree, streaming helpers, and request semantics. The client is generated directly from the upstream SDK, so keeping pace with new endpoints only requires re-running the included extraction script.

## Installation

Since this gem isn’t published on RubyGems yet, install it from the local source or Git:

```bash
git clone https://github.com/architecture/elevenlabs-ruby
cd elevenlabs-ruby
gem build elevenlabs-ruby.gemspec
gem install ./elevenlabs-0.1.0.gem
```

Or reference the GitHub repo/path directly from your `Gemfile`:

```ruby
# Latest main branch
gem "elevenlabs", git: "https://github.com/architecture/elevenlabs-ruby", branch: "main"

# Specific tag/commit
gem "elevenlabs", git: "https://github.com/architecture/elevenlabs-ruby", tag: "v0.1.0"
# or
gem "elevenlabs", path: "/path/to/elevenlabs-ruby"
```

## Quick start

```ruby
require "elevenlabs"

client = ElevenLabs::Client.new(api_key: ENV.fetch("ELEVENLABS_API_KEY"))

# Mirrors client.history.list(...) from Python
history = client.history.list(page_size: 5)
history["items"].each do |item|
  puts "#{item["voice_name"]}: #{item["text"]}"
end
```

Every namespace from the Python SDK shows up at the same path:

```ruby
client.voices.list
client.text_to_speech.convert("voice_id", text: "Hello!")
client.conversational_ai.agents.list
client.workspace.invites.create(email: "teammate@example.com")
```

Optional parameters default to the `ElevenLabs::OMIT` sentinel. Pass `nil` to send `null`, or skip the argument entirely to remove it from the payload.

## Available resources

Every top-level namespace described in `lib/elevenlabs/spec.json` is available under `client`. That includes:

`audio_isolation`, `audio_native`, `conversational_ai`, `dubbing`, `forced_alignment`, `history`, `models`, `music`, `pronunciation_dictionaries`, `samples`, `service_accounts`, `speech_to_speech`, `speech_to_text`, `studio`, `text_to_dialogue`, `text_to_sound_effects`, `text_to_speech`, `text_to_voice`, `tokens`, `usage`, `user`, `voices`, `webhooks`, `workspace`.

Below are example snippets that demonstrate each namespace. Substitute IDs and payloads with real values from your account.

```ruby
# audio_isolation
clean = client.audio_isolation.convert(audio: ElevenLabs::Upload.from_path("noisy.wav"))

# audio_native
client.audio_native.projects.list

# conversational_ai
client.conversational_ai.agents.list(page_size: 10)

# dubbing
client.dubbing.transcript.create(
  project_id: "proj_123",
  source_language: "en",
  target_languages: ["es"]
)

# forced_alignment
client.forced_alignment.jobs.create(audio: ElevenLabs::Upload.from_path("clip.wav"))

# history
client.history.list(page_size: 20)

# models
client.models.list

# music
client.music.composition_plan.create(prompt: "lofi chill beats")

# pronunciation_dictionaries
client.pronunciation_dictionaries.list

# samples
client.samples.list

# service_accounts
client.service_accounts.api_keys.list

# speech_to_speech
client.speech_to_speech.convert(
  voice_id: "voice_123",
  audio: ElevenLabs::Upload.from_path("input.wav")
)

# speech_to_text
client.speech_to_text.convert(model_id: "scribe_v1", file: ElevenLabs::Upload.from_path("meeting.mp3"))

# studio
client.studio.projects.list

# text_to_dialogue
client.text_to_dialogue.convert(
  inputs: [
    { "voice_id" => "voice_a", "text" => "Hi!" },
    { "voice_id" => "voice_b", "text" => "Hey there!" }
  ]
)

# text_to_sound_effects
client.text_to_sound_effects.convert(text: "city street ambience")

# text_to_speech
client.text_to_speech.convert("voice_id", text: "Hello world")

# text_to_voice
client.text_to_voice.create(text: "Generate new voice preview")

# tokens
client.tokens.single_use.create(
  voice_id: "voice_123",
  usage_limit: 3
)

# usage
client.usage.get

# user
client.user.get

# voices
client.voices.list

# webhooks
client.webhooks.list

# workspace
client.workspace.members.list
```

Each namespace exposes the full set of nested resources (for example `client.conversational_ai.knowledge_base.documents.create`) exactly as defined in the Python SDK.

## Common workflows

### Generate speech

```ruby
stream = client.text_to_speech.convert(
  "pNInz6obpgDQGcFmaJgB",
  text: "Welcome to ElevenLabs Ruby!",
  output_format: "mp3_44100_128",
  model_id: "eleven_monolingual_v1"
)

File.open("welcome.mp3", "wb") { |f| stream.each { |chunk| f.write(chunk) } }
```

### Stream live dialogue

```ruby
stream = client.text_to_dialogue.convert(
  inputs: [
    { "voice_id" => "voice_a", "text" => "Hello, how are you?" },
    { "voice_id" => "voice_b", "text" => "Doing great, thanks!" }
  ],
  model_id: "eleven_dialogue_v1"
)

File.open("dialogue.wav", "wb") { |f| stream.each { |chunk| f.write(chunk) } }
```

### Transcribe audio

```ruby
upload = ElevenLabs::Upload.from_path("meeting.m4a", content_type: "audio/mp4a-latm")

transcript = client.speech_to_text.convert(
  model_id: "scribe_v1",
  file: upload,
  language_code: "en",
  diarize: true
)

puts transcript["text"]
```

### Manage conversational agents

```ruby
agents = client.conversational_ai.agents.list(page_size: 10)
agents["items"].each do |agent|
  puts "#{agent["id"]} => #{agent["name"]}"
end

client.conversational_ai.agents.link.create(
  agent_id: agents["items"].first["id"],
  workspace_group_id: "group_123"
)
```

### Invite teammates

```ruby
client.workspace.invites.create(email: "teammate@example.com", role: "member")
```

## Streaming audio

Streaming endpoints return Ruby `Enumerator`s so you can write the same buffering logic:

```ruby
stream = client.text_to_speech.convert("voice_id", text: "Streaming example")

File.open("hello.mp3", "wb") do |file|
  stream.each { |chunk| file.write(chunk) }
end
```

Use `request_options: { chunk_size: 4096 }` to tweak streaming chunk sizes.

## Request options

Each call accepts a `request_options:` hash mirroring the Python SDK:

```ruby
client.history.list(
  page_size: 25,
  request_options: {
    timeout_in_seconds: 30,
    additional_headers: { "x-trace-id" => SecureRandom.uuid },
    additional_query_parameters: { debug: true }
  }
)
```

`additional_body_parameters` merge into JSON/form payloads, giving you a consistent escape hatch when the API adds fields before the SDK regenerates.

## File uploads

Use `ElevenLabs::Upload` to wrap local paths, strings, or IO objects for multipart endpoints:

```ruby
upload = ElevenLabs::Upload.from_path("sample.wav", content_type: "audio/wav")
client.voices.pvc.samples.create("voice_id", files: [upload], remove_background_noise: true)
```

Uploads created from paths auto-close their file handles after the request finishes. For custom IO objects, pass `auto_close: true` so the SDK can close them:

```ruby
io = File.open("clip.mp3", "rb")
upload = ElevenLabs::Upload.from_io(io, auto_close: true)
client.voices.ivc.samples.create("voice_id", files: [upload])
```

You can stub `ElevenLabs::Upload.file_opener` in tests to avoid touching the filesystem.

## Error handling

Non-success responses raise `ElevenLabs::HTTPError` with useful context:

```ruby
begin
  client.history.get("missing_id")
rescue ElevenLabs::HTTPError => e
  warn "HTTP #{e.status}"
  warn e.body.inspect
end
```

## Regenerating the API surface

The gem includes `scripts/extract_spec.py`, which parses the upstream Python SDK and writes `lib/elevenlabs/spec.json`. Run the script after pulling the latest upstream changes:

```bash
python3 scripts/extract_spec.py
```

This keeps every endpoint, request shape, and child resource in sync without hand editing Ruby code.

## Development & testing

Run the full test suite using Rake:

```bash
rake test
```

Or run individual test files:

```bash
ruby -Ilib:test test/operation_serialization_test.rb
ruby -Ilib:test test/http_client_test.rb
ruby -Ilib:test test/utils_test.rb
ruby -Ilib:test test/upload_test.rb
ruby -Ilib:test test/errors_test.rb
ruby -Ilib:test test/client_test.rb
ruby -Ilib:test test/environment_test.rb
```

**Test Coverage:**
- `operation_serialization_test.rb` - Tests request serialization for various operations
- `http_client_test.rb` - Tests HTTP client behavior and file upload handling
- `utils_test.rb` - Tests utility functions (deep_dup, assign_path, deep_compact, etc.)
- `upload_test.rb` - Tests Upload helper methods for files, bytes, strings, and IO
- `errors_test.rb` - Tests error classes and their attributes
- `client_test.rb` - Tests client initialization and resource caching
- `environment_test.rb` - Tests environment URL resolution

Launch IRB with the project on the load path:

```bash
irb -Ilib -Itest
```

From there you can `require "elevenlabs"` or `load` specific test files to iterate interactively.

## Building and installing the gem locally

To generate and install a local build for testing:

```bash
gem build elevenlabs-ruby.gemspec
gem install ./elevenlabs-$(ruby -Ilib -e 'require "elevenlabs"; puts ElevenLabs::VERSION').gem
```

You can then require the gem from any project (or IRB) and point `Gemfile` entries to the local path if desired:

```ruby
gem "elevenlabs", path: "/path/to/elevenlabs-ruby"
```

## Recent Updates

### 2026-01-24: Expanded Test Coverage

Added comprehensive test suite with 45 tests and 100 assertions covering:
- Utils module (deep_dup, assign_path, deep_compact, symbolize_keys, encode_path_segment)
- Upload helpers (from_bytes, from_string, from_io, from_path)
- Error classes (HTTPError attributes and inheritance)
- Client initialization and resource caching
- Environment URL resolution for all regions
- Created Rakefile for easy test execution (`rake test`)

All tests passing with 0 failures.

### 2026-01-24: GitHub Actions Workflow Updated to Ruby 3.3

Updated `.github/workflows/gem-push.yml` to use Ruby 3.3 (from 2.6.x) to match the project's Ruby version requirements. Also enabled bundler caching for faster CI builds.

### 2026-01-24: Updated API Spec from elevenlabs-python

Updated `lib/elevenlabs/spec.json` by running the extraction script against the latest elevenlabs-python SDK (commit 23cb5ff). This update includes:

**New Features:**
- Agent summaries endpoint (`client.conversational_ai.agents.summaries`)
- WhatsApp integration (`client.conversational_ai.whatsapp` and `client.conversational_ai.whatsapp_accounts`)
- Batch calls functionality for conversational AI
- Workspace resources management (`client.workspace.resources`)
- Knowledge base improvements (dependent type filtering, source file URL retrieval)
- Dubbing transcripts management (`client.dubbing.transcripts`)

**Enhanced Parameters:**
- `show_only_owned_agents` filter for agent listing
- `branch_id` support for conversation workflows
- `main_languages` and `conversation_initiation_source` for conversations
- `entity_detection` capability for speech-to-text
- Custom SIP headers for phone number workflows
- Widget configuration and language presets

**API Changes:**
- Removed deprecated `use_typesense` parameter from knowledge base operations
- Updated output format enums to use consolidated `allowed_output_formats`
- Enhanced phone number transfer configuration with custom headers
- Improved permission types for workspace API keys

To update your local spec.json in the future, run:
```bash
cd tmp-elevenlabs-python && git pull origin main && cd .. && python3 scripts/extract_spec.py
```
