---
type: Component
title: Opt-in runtime type validator
description: ElevenLabs::Types.validate! checks nested request bodies against types.json before they are sent — what it enforces, and what it deliberately does not.
resource: file://lib/elevenlabs/types.rb
tags: [conversational-ai, testing]
timestamp: 2026-07-23T12:34:33Z
---

# Overview

`ElevenLabs::Types.validate!(:AgentWorkflowRequestModel, payload)` validates a
nested request body against the schema produced by
[type extraction](/generation/type-extraction.md). It exists because
[request serialization](/runtime/request-serialization.md) treats parameters like
`workflow`, `conversation_config`, and `platform_settings` as opaque hashes — so
without it, the first feedback on a malformed body is a `422` from the API.

**It is not wired into the HTTP path.** Nothing calls it for you. That is the
design: it costs a schema walk, most callers send small well-formed bodies, and
making it mandatory would turn a forward-compatible SDK into one that rejects
payloads the server would have accepted. The intended use is in *tests* — assert
your workflow payload validates, and the 422 never happens in production.

# What it enforces — and the three deliberate holes

| Enforced | Not enforced |
|----------|--------------|
| required fields are present | field *types* (a String where an Integer belongs passes) |
| union discriminants name a known variant | unknown keys — tolerated, matching Pydantic's `extra="allow"` |
| enum values are in the allowed set | unknown type names — **silently skipped**, never raised |
| `literal_value` fields match exactly | server-side `@model_validator` logic |

The "unknown type → skip" rule is the important one. It is what keeps an older
gem usable against a newer API: a type the bundled `types.json` has never heard
of validates vacuously rather than failing. The cost is that a typo'd type name
in `validate!` is a silent no-op, not an error.

`ValidationError` carries `path` (an array, formatted as `a.b[0].c`) and
`type_name`, so failures point at the offending field rather than the whole
payload.

# Its one piece of hard-won knowledge

The union check distinguishes **"discriminator absent"** from **"discriminator
present but unrecognized"**, and the absent case raises a message spelling out
that the server requires the field explicitly even though Pydantic marks it as
defaulted. That is rule 2 of
[the server-side workflow rules](/api-contract/workflow-validators.md) encoded as
a local check — the only one of the three that is expressible this way.

# Citations

[1] `lib/elevenlabs/types.rb` — `Validator#validate_model`, `#validate_union`, `#recurse_into_field`.
[2] `test/types_validator_test.rb`.
