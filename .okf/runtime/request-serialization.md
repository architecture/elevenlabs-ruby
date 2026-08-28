---
type: Component
title: Request serialization
description: How OperationExecutor turns a flat params hash into path, query, body, and multipart entries using only the operation spec.
resource: file://lib/elevenlabs/operation_executor.rb
tags: [codegen, serialization]
timestamp: 2026-08-28T12:00:00Z
---

# Overview

`OperationExecutor#call` is the whole request-building layer, and it is
**entirely spec-driven** — it contains no endpoint-specific logic. Given the
operation hash from [the resource graph](/runtime/dynamic-resource-graph.md) and
a flat params hash, it produces path, query, JSON body, form body, files, and
headers, then hands them to [the HTTP transport](/runtime/http-transport.md).

`request_options` is pulled out of params first and is never treated as an API
parameter; it is the caller's escape hatch for `additional_headers`,
`additional_query_parameters`, `additional_body_parameters`, and
`timeout_in_seconds`.

# The four builders

| Part | Rule |
|------|------|
| **path** | `{param}` placeholders substituted from params. Each segment is `CGI.escape`d, so ids containing `/` or spaces are safe. A missing path param raises `KeyError` — deliberately, since the alternative is a request to a malformed URL. |
| **query** | Ordered spec entries, each a `param` reference or a `literal`. Entries whose value is `nil` **or** `OMIT` are dropped. |
| **body** | Optional `literal` seed, then `assignments` map each param to a **path within the body** (`assign_path` builds intermediate hashes/arrays as needed). An assignment with an empty path means the param *is* the body — merged if it's a hash, otherwise replacing it wholesale, which is how bare-array and scalar bodies are expressed. |
| **files** | Recursive resolution of `param` / `literal` / `tuple` / `list` entries; unresolved entries are dropped rather than sent empty. |
| **headers** | Mostly static strings passed straight through. A value of `{ param: "x" }` is built from that argument instead, and the header is omitted when the argument is unset — see [the json.dumps leak](/generation/json-encoded-params.md) for why this shape exists. |

An assignment may also carry `encode: "json"`, meaning the field goes on the
wire as JSON *text* rather than as a raw value (`labels: {"accent" => "us"}` →
the string `{"accent":"us"}`). Absent values are left alone so compaction still
removes them instead of sending the text `null`. Upstream narrowed this to
dictionary and enum fields in v2.65.0; list-of-primitive form fields lost the
marker and now go out as repeated multipart parts instead — see
[the json.dumps leak](/generation/json-encoded-params.md) and
[the HTTP transport](/runtime/http-transport.md).

`additional_body_parameters` is merged **after** compaction, so a caller can
deliberately send a key the compaction would otherwise have stripped.

# The compaction step

Every body passes through `Utils.deep_compact` before sending. This is what
keeps optional parameters out of the payload, and it is also the single most
surprising behaviour in the gem — empty hashes do not survive it. That is
covered in [OMIT and deep_compact](/runtime/omit-and-deep-compact.md), and it has
a concrete, load-bearing consequence for
[workflow payloads](/api-contract/workflow-validators.md).

# Streaming

`request.streaming` in the spec routes the call to `HTTPClient#stream`, which
returns a lazy `Enumerator` of body chunks rather than a parsed response. The
request is not issued until the enumerator is first consumed — so a streaming
call that is built but never iterated makes no network request at all.

# Citations

[1] `lib/elevenlabs/operation_executor.rb` — `build_path`, `build_query`, `build_body`, `build_files`.
[2] `test/operation_serialization_test.rb` — the per-endpoint contract tests for all of the above.
