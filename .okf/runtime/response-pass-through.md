---
type: Contract
title: Responses are passed through untyped
description: The gem does no response modelling — parsed JSON is returned verbatim, including bare top-level arrays, and this is pinned by regression tests.
tags: [serialization, testing]
timestamp: 2026-07-23T12:34:33Z
---

# Overview

Unlike the upstream Python SDK, this gem has **no response types**. `handle_response`
does exactly three things:

| Condition | Result |
|-----------|--------|
| non-2xx | raises `ElevenLabs::HTTPError` (with a parsed body if it is JSON, else the raw string) |
| empty body | `nil` |
| otherwise | `JSON.parse(body)`, falling back to the raw String on `JSON::ParserError` |

Callers therefore get plain `Hash`, `Array`, `String`, or `nil` with **string
keys**, never symbols and never a wrapper object. This asymmetry is intentional:
requests are heavily spec-driven, responses are not modelled at all, which is
what keeps a spec regeneration from being able to break response handling.

# The invariant: bare arrays stay arrays

Several endpoints — `conversational_ai.phone_numbers.list` among them — return a
**bare top-level JSON array**. Because there is no response typing, the parsed
`Array` must be handed back to the caller untouched: not coerced to a `Hash`,
not wrapped in one under some synthesized key.

Coercion was a real regression here, and it failed loudly and confusingly:

```
TypeError: wrong element type Hash at 0 (expected array)
```

Two tests pin the contract, and they should be treated as load-bearing rather
than incidental:

- `test/http_client_test.rb` — `handle_response` parses a bare JSON array body
  into a Ruby `Array` and returns it as-is;
- `test/operation_serialization_test.rb` — end-to-end, `phone_numbers.list`
  returns the response object with `assert_same`, proving no wrapping or
  copying happens anywhere in [the executor](/runtime/request-serialization.md).

The `assert_same` is the sharp end: identity, not equality, is what rules out a
future "helpful" normalization layer.

# Implication for callers

Any convenience the caller wants — symbolized keys, typed structs, pagination
helpers — belongs in caller code. Adding it inside the gem would break this
contract for everyone else and is the change these tests exist to catch.

# Citations

[1] `lib/elevenlabs/http_client.rb` — `handle_response`, `raise_http_error`.
[2] Commit `e5705d0` — "test: pin bare-array response pass-through (phone_numbers.list regression)".
