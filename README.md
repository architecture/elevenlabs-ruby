# ElevenLabs Ruby SDK

> **Disclaimer:** This is an **unofficial community SDK** and is not affiliated with, endorsed by, or maintained by ElevenLabs. For the official SDK, see [elevenlabs-python](https://github.com/elevenlabs/elevenlabs-python).

This gem mirrors the public interface of [elevenlabs-python](https://github.com/elevenlabs/elevenlabs-python) and provides a Ruby-native client with the same resource tree, streaming helpers, and request semantics. The client is generated directly from the upstream SDK, so keeping pace with new endpoints only requires re-running the included extraction script.

## Installation

This gem is published to **GitHub Packages** (not RubyGems.org). Add the GitHub Packages source to your `Gemfile`:

```ruby
source "https://rubygems.pkg.github.com/architecture" do
  gem "elevenlabs", "0.5.0"
end
```

GitHub Packages requires authentication. Create a [personal access token](https://github.com/settings/tokens) with `read:packages` scope and add it to `~/.gem/credentials`:

```
---
:github: Bearer <YOUR_TOKEN>
```

Then run `bundle install`.

> **Note:** The `gem install elevenlabs` command shown on the GitHub Packages page points to RubyGems.org and will not work — this gem is only available via GitHub Packages.

### Alternative: install directly from GitHub (no registry auth required)

Bundler can pull the gem straight from the git repository. This works for public repos without any token setup:

```ruby
# Pin to a release tag (recommended for production)
gem "elevenlabs", git: "https://github.com/architecture/elevenlabs-ruby", tag: "v0.5.0"

# Or track the latest main branch
gem "elevenlabs", git: "https://github.com/architecture/elevenlabs-ruby", branch: "main"
```

Then run `bundle install`.

## Quick start

```ruby
require "elevenlabs"

client = ElevenLabs::Client.new(api_key: ENV.fetch("ELEVENLABS_API_KEY"))

# Mirrors client.history.list(...) from Python
history = client.history.list(page_size: 5)
history["history"].each do |item|
  puts "#{item["voice_name"]}: #{item["text"]}"
end
```

Every namespace from the Python SDK shows up at the same path:

```ruby
client.voices.get_all
client.text_to_speech.convert("voice_id", text: "Hello!")
client.conversational_ai.agents.list
client.workspace.invites.create(email: "teammate@example.com")
```

Optional parameters default to the `ElevenLabs::OMIT` sentinel. Pass `nil` to send `null`, or skip the argument entirely to remove it from the payload.

## Available resources

Every top-level namespace described in `lib/elevenlabs/spec.json` is available under `client`. That includes:

`audio_isolation`, `audio_native`, `conversational_ai`, `dubbing`, `environment_variables`, `forced_alignment`, `history`, `models`, `music`, `pronunciation_dictionaries`, `samples`, `service_accounts`, `speech_to_speech`, `speech_to_text`, `studio`, `text_to_dialogue`, `text_to_sound_effects`, `text_to_speech`, `text_to_voice`, `tokens`, `usage`, `user`, `voices`, `webhooks`, `workspace`.

Below are example snippets that demonstrate each namespace. Substitute IDs and payloads with real values from your account.

```ruby
# audio_isolation
clean = client.audio_isolation.convert(audio: ElevenLabs::Upload.from_path("noisy.wav"))

# audio_native
client.audio_native.projects.list

# conversational_ai
client.conversational_ai.agents.list(page_size: 10)

# environment_variables
client.environment_variables.list(page_size: 10)
client.environment_variables.create(request: { "label" => "API_KEY", "type" => "secret", "values" => { "production" => "sk-123" } })

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
client.music.upload(file: ElevenLabs::Upload.from_path("track.mp3"))
client.music.video_to_music(videos: [ElevenLabs::Upload.from_path("clip.mp4")], description: "upbeat")

# pronunciation_dictionaries
client.pronunciation_dictionaries.list
client.pronunciation_dictionaries.rules.set(
  pronunciation_dictionary_id: "dict_123",
  rules: [{ "type" => "phoneme", "string_to_replace" => "ElevenLabs", "phoneme" => "ɛlɛvənlæbz", "alphabet" => "ipa" }]
)

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
client.voices.get_all

# webhooks
client.webhooks.list

# workspace
client.workspace.members.list
client.workspace.auth_connections.list
client.workspace.auth_connections.create(request: { "type" => "oauth2", "label" => "My OAuth" })
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
agents["agents"].each do |agent|
  puts "#{agent["agent_id"]} => #{agent["name"]}"
end

client.conversational_ai.agents.link.create(
  agent_id: agents["agents"].first["agent_id"],
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

**Test Coverage (157 tests, 437 assertions):**
- `operation_serialization_test.rb` - Tests request serialization for various operations
- `operation_executor_test.rb` - Tests path building, query/body/file resolution, streaming dispatch, request_options forwarding
- `http_client_test.rb` - Tests file upload handling, redirect following, streaming cleanup
- `http_client_headers_test.rb` - Tests default headers, API key injection, JSON/form body prep, timeouts, response parsing, error handling
- `resources_test.rb` - Tests spec loading, class generation, operation methods, child resource accessors, caching, deep nesting
- `utils_test.rb` - Tests utility functions (deep_dup, assign_path, deep_compact, etc.)
- `upload_test.rb` - Tests Upload helper methods for files, bytes, strings, and IO
- `errors_test.rb` - Tests error classes and their attributes
- `client_test.rb` - Tests client initialization, resource caching, all namespace accessors, custom environments
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

### 2026-04-03: v0.5.0 — Updated API Spec from elevenlabs-python v2.41.0

Updated `lib/elevenlabs/spec.json` by running the extraction script against elevenlabs-python v2.41.0 (commits #749 and #756 — April 2026).

**New Operations:**
- `music.video_to_music` — generate music from video files (multipart upload, streaming response)
- `conversational_ai.conversations.analysis.run` — re-run analysis for a conversation using agent's current evaluation criteria

**New/Updated Parameters:**
- `conversational_ai.batch_calls.create` — added `branch_id` and `environment`
- `conversational_ai.conversations.messages.text_search` — added `sort_by` for ordering results
- `speech_to_text.convert` — added `source_url` for URL-based transcription
- `text_to_speech.convert` / `stream` — added `avatar_context` for avatar generation
- `text_to_dialogue.convert` / `stream` — added `avatar_context` for avatar generation

**Removed Parameters:**
- `forced_alignment.create` — removed `enabled_spooled_file`

**Removed Operations:**
- Top-level `delete_v_1_convai_agents_agent_id_branches_branch_id` (consolidated into namespace)

**New Ruby access patterns:**
```ruby
# Generate music from video
stream = client.music.video_to_music(
  videos: [ElevenLabs::Upload.from_path("clip.mp4")],
  description: "upbeat background music"
)
File.open("music.mp3", "wb") { |f| stream.each { |chunk| f.write(chunk) } }

# Run conversation analysis
client.conversational_ai.conversations.analysis.run("conv_123")

# Transcribe from URL
client.speech_to_text.convert(source_url: "https://example.com/audio.mp3")
```

Test suite now at 157 runs, 437 assertions, 0 failures.

### 2026-03-24: v0.4.0 — Updated API Spec from elevenlabs-python v2.40.0

Updated `lib/elevenlabs/spec.json` by running the extraction script against elevenlabs-python v2.40.0 (commits #745 and #750 — March 2026).

**New Namespaces:**
- `environment_variables` — manage ConvAI environment variables (list, create, get, update)
- `workspace.auth_connections` — manage workspace auth connections (list, create, delete)
- `conversational_ai.knowledge_base.document` — individual document operations (refresh, compute_rag_index)

**New/Updated Parameters:**
- `speech_to_text.convert` — added `entity_redaction` and `entity_redaction_mode` for PII redaction
- `speech_to_text.convert` — added `keyterms` for keyword boosting

**Bug Fixes:**
- Fixed `build_body` to handle empty-path assignments (operations where the `request` param IS the body, such as `environment_variables.create` and `workspace.auth_connections.create`)

**New Types:**
Auth connections (OAuth2, JWT, basic, bearer, custom header, WhatsApp), environment variables, conditional AST operators, telephony direction, guardrail trigger actions, content threshold guardrails, LLM literal JSON schema properties, and more.

Test suite now at 146 runs, 394 assertions, 0 failures.

### 2026-03-14: v0.3.4 — Updated API Spec from elevenlabs-python v2.39.1

Updated `lib/elevenlabs/spec.json` by running the extraction script against elevenlabs-python v2.39.1 (commit 8303d37, SDK regeneration #744 — March 2026).

**New Operations:**
- `workspace.groups.list` — list all groups in the workspace

**New/Updated Parameters:**
- `audio_native.update_content_from_url` — added `author` and `title` optional params
- `conversational_ai.batch_calls.create` — added `target_concurrency_limit` for controlling simultaneous call dispatch
- `conversational_ai.users.list` — added `branch_id` filter and `sort_by` ordering
- `conversational_ai.whatsapp_accounts.update` — added `enable_audio_message_response`
- `music.compose` — added `respect_sections_durations` for stricter section timing
- `speech_to_text.convert` — added `no_verbatim` to strip filler words (scribe_v2)
- `workspace.invites.create` — added `seat_type` param

**Removed Parameters:**
- `conversational_ai.agents.create` / `update` — removed `coaching_settings`

Test suite now at 65 runs, 182 assertions, 0 failures.

### 2026-03-05: v0.3.3 — Tests and docs for SDK #740 new operations

Added serialization tests and README examples for the two new operations introduced in SDK #740:
- `music.upload` — multipart file upload test covering path, form field, and file entry
- `pronunciation_dictionaries.rules.set` — JSON body test covering path and rules payload

Test suite now at 57 runs, 144 assertions, 0 failures.

### 2026-03-05: v0.3.2 — Updated API Spec from elevenlabs-python (SDK #740)

Updated `lib/elevenlabs/spec.json` by running the extraction script against the latest elevenlabs-python SDK (commit 78ed67e, SDK regeneration #740 — March 2026).

**New Operations:**
- `music.upload` — upload an audio file for use in music workflows
- `pronunciation_dictionaries.rules.set` — replace the full rules set on a pronunciation dictionary

**New Ruby access patterns:**
```ruby
client.music.upload(file: ElevenLabs::Upload.from_path("track.mp3"))
client.pronunciation_dictionaries.rules.set(
  pronunciation_dictionary_id: "dict_123",
  rules: [{ "type" => "phoneme", "string_to_replace" => "ElevenLabs", "phoneme" => "ɛlɛvənlæbz", "alphabet" => "ipa" }]
)
```

**New Types:**
`CheckServiceAvailabilityParams`, `CreateAssetParams`, `CreateClientAppointmentParams`, `CustomGuardrailsConfigInput`, `CustomGuardrailsConfigOutput`, `DeleteAssetParams`, `DeleteCalendarEventParams`, `GetClientAppointmentsParams`, `GuardrailExecutionMode`, `ListCalendarEventsParams`, `MusicUploadResponse`, `RequiredConstraint`, `RequiredConstraints`, `StudioAgentSettingsModel`, `StudioAgentToolSettingsModel`, `TelephonyCallConfig`, `UpdateAssetParams`, `UpdateCalendarEventParams`, `VoiceStatisticsResponseModel`

### 2026-03-05: v0.3.1 — HTTP Redirect Following

The HTTP client now automatically follows `3xx` redirects when the server returns a redirect response. This means requests that hit moved or redirected endpoints will transparently re-issue to the new location without any change to your calling code.

### 2026-03-01: Updated API Spec from elevenlabs-python (v0.2.0)

Updated `lib/elevenlabs/spec.json` by running the extraction script against the latest elevenlabs-python SDK (commit f71bcd8, SDK regeneration #736 — March 2026). 6 new operations added.

**New Operations:**
- `audio_native.update_content_from_url` — update audio native content from a URL
- `conversational_ai.conversations.files.create` — upload files within a conversation context
- `conversational_ai.conversations.files.delete` — delete files from a conversation
- `conversational_ai.conversations.messages.search` — search conversation messages
- `conversational_ai.conversations.messages.text_search` — text search across conversation messages
- `conversational_ai.llm.list` — list available LLMs for conversational AI

**New Ruby access patterns:**
```ruby
client.audio_native.update_content_from_url(project_id: "proj_123", url: "https://example.com/audio.mp3")
client.conversational_ai.conversations.files.create(conversation_id: "conv_123", file: upload)
client.conversational_ai.conversations.files.delete(conversation_id: "conv_123", file_id: "file_456")
client.conversational_ai.conversations.messages.search(conversation_id: "conv_123", query: "hello")
client.conversational_ai.conversations.messages.text_search(conversation_id: "conv_123", query: "hello")
client.conversational_ai.llm.list
```

**Upstream changes also included:**
- Coaching settings for agent create/patch operations
- New types: `ClipAnimation`, `CoachingAgentSettings`, `FocusGuardrail`, `PromptInjectionGuardrail`, `ReferenceVideo`, `LlmInfoModel`, `ConstantSchemaOverride`, `DynamicVariableSchemaOverride`, `MessagesSearchResponse`, `ConversationHistoryTranscriptResponseModel`, `PrivacyConfigOutput`, `ProcedureRefResponseModel`, `WidgetConfig`, `GenerationSourceContext`
- Renamed: `AlignmentGuardrail` → `FocusGuardrail`, `PrivacyConfig` → `PrivacyConfigInput`

### 2026-02-17: Updated API Spec from elevenlabs-python (v0.2.0)

Updated `lib/elevenlabs/spec.json` by running the extraction script against the latest elevenlabs-python SDK (commit 0b87e77, SDK regeneration #730 — February 16, 2026). This is a major update with many new endpoints.

**New Namespaces:**
- MCP server management (`client.conversational_ai.mcp_servers` + tool approvals, tool configs, tools listing)
- Agent branches (`client.conversational_ai.agents.branches`) — list, create, get, update, merge
- Agent deployments (`client.conversational_ai.agents.deployments`)
- Agent drafts (`client.conversational_ai.agents.drafts`)
- Conversational AI tests (`client.conversational_ai.tests`) with invocations sub-resource
- Conversational AI tools (`client.conversational_ai.tools`)
- Twilio integration (`client.conversational_ai.twilio`) — outbound calls and call registration
- SIP trunk (`client.conversational_ai.sip_trunk`) — outbound calls
- Analytics (`client.conversational_ai.analytics.live_count`)
- Dashboard settings (`client.conversational_ai.dashboard.settings`)
- LLM usage (`client.conversational_ai.llm_usage`, `client.conversational_ai.agents.llm_usage`)
- Users listing (`client.conversational_ai.users`)
- Agent simulation (`client.conversational_ai.agents.simulate_conversation`, `simulate_conversation_stream`, `run_tests`)
- Professional voice cloning expanded (`client.voices.pvc`) — samples, speakers, verification, captcha, waveform

**Enhanced Features:**
- Music: added `compose_detailed`, `stream`, `separate_stems` operations
- Text-to-dialogue: added `stream_with_timestamps` and `convert_with_timestamps`
- Dubbing: expanded resource operations (transcribe, translate, dub, render, segment/speaker management)
- Studio: added `get_muted_tracks` for projects
- Knowledge base: added `rag_index_overview`, per-document RAG index compute, chunk and summary retrieval

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
