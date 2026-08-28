---
type: Component
title: HTTP transport
description: Faraday setup, auth and SDK headers, the manual redirect loop, timeouts, and how multipart uploads are resolved and cleaned up.
resource: file://lib/elevenlabs/http_client.rb
tags: [serialization, testing]
timestamp: 2026-08-28T12:00:00Z
---

# Overview

`ElevenLabs::HTTPClient` wraps one Faraday connection per client, with the
`multipart` (configured `flat_encode: true`) and `url_encoded` request
middlewares and a caller-supplied adapter.
The adapter is injectable (`Client.new(adapter:)`), and a whole `http_client:`
can be substituted — which is how the test suite runs the entire stack without a
network, via the `FakeHTTP` stub.

# Headers

Every request carries, in this precedence order (later wins):

1. defaults — `User-Agent: elevenlabs-ruby/<VERSION>`, `X-Fern-Language: Ruby`,
   `X-Fern-SDK-Name: elevenlabs-ruby`, `X-Fern-SDK-Version: <VERSION>`
2. per-client `headers:`
3. per-operation headers from the spec
4. **`xi-api-key`**, applied only if an api key is set
5. `request_options[:additional_headers]`

Note the ordering: `xi-api-key` overwrites any same-named header from levels 1–3,
but `additional_headers` can override even the api key. The Fern headers are
version-stamped from `ElevenLabs::VERSION`, so a stale version constant is
visible to the API server, not just to `gem list`.

# Redirects are handled manually

Faraday's follow-redirects middleware is **not** installed. `#request` loops up to
`MAX_REDIRECTS` (5) itself over statuses 301, 302, 307, and 308, taking the
absolute `Location` as the next path. A redirect with no `Location` raises
`HTTPError` rather than looping, and exceeding 5 hops raises `HTTPError` with
`status: 0` — a sentinel meaning "no HTTP response caused this", not a real
status.

The loop re-sends the same method and body on every hop. That matches 307/308
semantics but is technically laxer than the spec for 301/302, which is a
deliberate simplification, not an oversight.

`#stream` does **not** follow redirects at all — it issues one request and yields
chunks.

# Timeouts

`DEFAULT_TIMEOUT` is **240 seconds**, applied to both `timeout` and
`open_timeout`. That is long because audio generation endpoints are slow; it
also means a hung connection blocks a caller's thread for four minutes unless
they pass `timeout:` on the client or `request_options[:timeout_in_seconds]` per
call.

# File uploads and cleanup

`prepare_file_value` resolves, in order: JSON-encoding a non-string value when
the entry's content type is `application/json`; a `Faraday::Multipart::Param`
for typed non-file values; an `ElevenLabs::Upload` helper
(`lib/elevenlabs/upload.rb`, which also owns auto-close semantics); a
pass-through `Faraday::UploadIO`; **an existing file path given as a
String**; and finally any `#read`-able IO.

The String-path branch is worth knowing: a plain string that happens to name an
existing file on disk is uploaded as that file. A string intended as literal
content will be silently replaced by file contents if it collides with a real
path — wrap it in `StringIO` to be unambiguous.

**A part with an explicit content type is one part.** Array values are fanned
out into a part per element *only* when the entry carries no content type
(genuine multi-file uploads). A typed part serializes its whole value as a
single body, matching upstream's `json.dumps` — see
[the json.dumps leak](/generation/json-encoded-params.md). The typed branch
builds a `Faraday::Multipart::ParamPart(value, content_type, content_id)`;
it referenced a non-existent `Multipart::Param` until v0.9.0, so every request
carrying such a part raised `NameError` before reaching the network.

IOs opened by the gem are closed in an `ensure` block after the request, and
cleanup errors are swallowed so they cannot mask a real HTTP error.

# Repeated parts keep the bare field name

The multipart middleware runs with **`flat_encode: true`**. Without it Faraday
names every element of an array `tags[]`, and the ElevenLabs API does not read
bracketed keys — it expects the field repeated under its plain name, which is
what upstream's httpx client sends. The option applies to both kinds of fan-out
above: list-of-primitive form fields (`tags`, `keyterms`, `genres`) and genuine
multi-file uploads (`files`, `videos`).

This became load-bearing in v0.10.0, when upstream stopped wrapping
list-of-primitive form fields in `json.dumps` and started sending them as
repeated parts. Before that the same fields arrived as one JSON string, so the
bracket bug was invisible. The encoding is pinned by tests that assert on the
fully-encoded multipart body rather than on the hash handed to Faraday — the
distinction matters, because everything above the middleware looks identical
either way.

# Citations

[1] `lib/elevenlabs/http_client.rb` — `build_headers`, `request`, `prepare_file_value`, `run_cleanups`.
[2] `test/http_client_headers_test.rb`, `test/http_client_test.rb` (`test_array_form_values_become_repeated_fields_with_bare_name`), `test/upload_test.rb`.
