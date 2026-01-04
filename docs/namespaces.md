# ElevenLabs Ruby SDK – Namespace Reference

This document summarizes every top-level namespace generated from `lib/elevenlabs/spec.json`, along with examples that mirror the Python SDK. All examples assume:

```ruby
client = ElevenLabs::Client.new(api_key: ENV.fetch("ELEVENLABS_API_KEY"))
```

## audio_isolation

Remove background noise from clips or stream cleaned audio in real time.

```ruby
cleaned = client.audio_isolation.convert(audio: ElevenLabs::Upload.from_path("noisy.wav"))

File.open("clean.wav", "wb") do |f|
  cleaned.each { |chunk| f.write(chunk) }
end
```

## audio_native

Interact with Audio Native projects (create, list, update, etc.).

```ruby
projects = client.audio_native.projects.list
project = client.audio_native.projects.create(name: "Native Showcase")
```

## conversational_ai

Manage agents, knowledge bases, phone numbers, conversations, and analytics for Conversational AI.

```ruby
agents = client.conversational_ai.agents.list(page_size: 20)

client.conversational_ai.knowledge_base.documents.create(
  agent_id: agents["items"].first["id"],
  title: "FAQ",
  content: "Frequently asked questions..."
)
```

## dubbing

Convert audio to other languages, manage dubbing resources, speakers, transcripts, and segments.

```ruby
dub = client.dubbing.transcript.create(
  project_id: "proj_123",
  source_language: "en",
  target_languages: ["es", "fr"]
)
```

## forced_alignment

Align transcripts to audio by uploading files for high-precision timestamps.

```ruby
alignment = client.forced_alignment.jobs.create(
  audio: ElevenLabs::Upload.from_path("speech.wav"),
  transcript: "Hello world"
)
```

## history

List, inspect, delete, or download audio generations.

```ruby
items = client.history.list(page_size: 10)
client.history.download(
  history_item_ids: items["items"].map { |item| item["history_item_id"] }
)
```

## models

Enumerate all models and their capabilities.

```ruby
client.models.list
client.models.get("eleven_multilingual_v2")
```

## music

Create music compositions or manage custom plans.

```ruby
plan = client.music.composition_plan.create(prompt: "Lofi beats")
```

## pronunciation_dictionaries

Create and manage pronunciation dictionaries and rules.

```ruby
dict = client.pronunciation_dictionaries.create(name: "Product Names")
client.pronunciation_dictionaries.rules.create(
  dictionary_id: dict["id"],
  word: "ElevenLabs",
  pronunciation: "eh-leh-ven-labs"
)
```

## samples

Access sample data, search, and delete.

```ruby
client.samples.list
```

## service_accounts

Manage workspace service accounts and API keys.

```ruby
account = client.service_accounts.create(name: "CI Bot")
keys = client.service_accounts.api_keys.list(service_account_id: account["id"])
```

## speech_to_speech

Convert speech input into speech output using target voices.

```ruby
client.speech_to_speech.convert(
  voice_id: "voice_123",
  audio: ElevenLabs::Upload.from_path("input.wav")
)
```

## speech_to_text

Transcribe audio or video with diarization, webhooks, and extra formats.

```ruby
transcript = client.speech_to_text.convert(
  model_id: "scribe_v1",
  file: ElevenLabs::Upload.from_path("meeting.m4a"),
  diarize: true
)
```

## studio

Interact with Studio projects, chapters, and content.

```ruby
project = client.studio.projects.create(title: "Podcast Episode", script: "...content...")
client.studio.projects.snapshots.create(project_id: project["id"])
```

## text_to_dialogue

Generate multi-voice dialogue clips or streams.

```ruby
client.text_to_dialogue.convert(
  inputs: [
    { "voice_id" => "voice_a", "text" => "Hi there!" },
    { "voice_id" => "voice_b", "text" => "Hey!" }
  ]
)
```

## text_to_sound_effects

Create sound effects from textual prompts.

```ruby
client.text_to_sound_effects.convert(text: "ocean waves crashing")
```

## text_to_speech

Convert text into audio or audio streams, with timestamps if needed.

```ruby
stream = client.text_to_speech.convert("voice_id", text: "Hello!")
File.open("hello.mp3", "wb") { |f| stream.each { |chunk| f.write(chunk) } }
```

## text_to_voice

Create new voices or previews directly from provided text.

```ruby
client.text_to_voice.create(
  text: "Voice preview input",
  voice_name: "RubyNarrator"
)
```

## tokens

Issue single-use or standard tokens for limited-access voice generation.

```ruby
token = client.tokens.single_use.create(voice_id: "voice_123", usage_limit: 5)
```

## usage

Retrieve usage metrics for your account.

```ruby
client.usage.get
```

## user

Fetch the authenticated user profile or subscription information.

```ruby
client.user.get
client.user.subscription.get
```

## voices

Search, create, edit, or delete voices, including instant voice cloning (IVC) and professional voice cloning (PVC).

```ruby
client.voices.list
client.voices.pvc.samples.create(
  "voice_123",
  files: [ElevenLabs::Upload.from_path("sample.wav")],
  remove_background_noise: true
)
```

## webhooks

Manage webhook subscriptions and custom workflows.

```ruby
client.webhooks.create(
  url: "https://example.com/webhook",
  events: ["speech.generated"]
)
```

## workspace

Invite members, manage groups, and access workspace-level resources.

```ruby
client.workspace.invites.create(email: "teammate@example.com", role: "member")
client.workspace.groups.list
```
