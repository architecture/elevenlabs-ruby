---
type: Gotcha
title: json.dumps-wrapped params leak silently
description: Params the upstream SDK wraps in json.dumps are encoded during extraction and baked in as literals — the silent sibling of the Dummy trap, fixed by an encode marker.
tags: [codegen, upstream-python-sdk, serialization]
timestamp: 2026-07-23T14:10:00Z
---

# Overview

[The Dummy trap](/generation/extractor-dummy-trap.md) is loud: an unknown name
becomes a `Dummy` and the extractor crashes on serialization. This is its
**silent** sibling, and it is worse for exactly that reason.

`scripts/extract_spec.py` binds each parameter to a placeholder string
(`__param__tags__`) and evaluates the upstream call's argument expressions. When
upstream writes:

```python
"tags": json.dumps(jsonable_encoder(tags)),
```

`jsonable_encoder` is registered as a pass-through identity, but **`json` is a
real module** in `EVAL_GLOBALS`. So it faithfully encodes the placeholder into
`'"__param__tags__"'` — a perfectly ordinary string that `is_placeholder()` no
longer recognises. It is therefore recorded as a **literal**, and the caller's
actual argument is never wired up at all.

Nothing fails. The spec is valid, the tests pass, and every request ships the
text `"__param__tags__"` to the API while silently discarding what the caller
passed.

# Blast radius when it went unnoticed

Discovered during the v2.59.0 refresh, when upstream expanded this pattern from
one `raw_client.py` file to eight. It had already been live: v0.8.1 shipped with
`speech_to_text.convert` sending a junk `additional_formats` part on **every**
call. The refresh took it to 14 fields across 9 operations.

The lesson is that the placeholder is a *shibboleth* — its presence anywhere in
the generated spec is always a bug. A cheap post-extraction assertion catches
the whole class:

```bash
grep -o '__param__[a-z_0-9]*__' lib/elevenlabs/spec.json | sort | uniq -c
```

Empty output is the only acceptable result. Run it after every regeneration —
it is the check [the update procedure](/release/update-procedure.md) leans on,
because no test will fail on your behalf.

# The fix: an encode marker

The value genuinely must reach the wire as JSON *text*, so passing the helper
through as identity would be wrong — that would send a raw array where the
server expects a JSON string. Instead the extractor recovers the param name
from the quoted form and emits an assignment carrying an encoding marker:

```json
{ "path": ["tags"], "param": "tags", "encode": "json" }
```

[Request serialization](/runtime/request-serialization.md) applies
`JSON.generate` when it sees `encode: "json"`, and deliberately skips absent
values so [deep_compact](/runtime/omit-and-deep-compact.md) still strips them
rather than sending the text `null`.

For multipart entries the marker is unnecessary: those parts already declare
`content_type: application/json`, and [the HTTP transport](/runtime/http-transport.md)
encodes non-String values for that content type — so a plain param reference
produces the right bytes, and an omitted value drops the part entirely.

# Citations

[1] `scripts/extract_spec.py` — `json_encoded_placeholder_name`, `collect_assignments`, `parse_file_value`.
[2] `lib/elevenlabs/operation_executor.rb` — `encode_assignment_value`.
[3] `test/operation_serialization_test.rb` — `test_speech_to_text_convert_json_encoded_fields` and the v2.59.0 block.
