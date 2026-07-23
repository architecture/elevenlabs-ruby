---
type: Gotcha
title: OMIT sentinel and deep_compact
description: Why the gem needs a sentinel distinct from nil, and the empty-hash rule in deep_compact that silently drops keys callers meant to send.
resource: file://lib/elevenlabs/utils.rb
tags: [serialization]
timestamp: 2026-07-23T12:34:33Z
---

# Overview

Ruby cannot distinguish "argument omitted" from "argument passed as `nil`" using
`nil` as the default. The ElevenLabs API cares about the difference — sending
`{"name": null}` is not the same as sending nothing. So generated methods default
optional keywords to `ElevenLabs::Utils::OMIT`, a frozen bare `Object`.

Two properties matter. It is compared with **`.equal?`**, never `==`, so a
caller value that happens to define a permissive `==` cannot masquerade as
omitted. And it is a singleton constant, so it survives `deep_dup` unchanged and
can be recognized at any nesting depth.

# The empty-hash rule

`Utils.deep_compact` walks a body bottom-up, dropping `nil` and `OMIT`. The part
that surprises people is what it does with the containers themselves:

| Input | Output |
|-------|--------|
| `{a: 1, b: nil}` | `{a: 1}` |
| `{a: {b: nil}}` | `nil` — the inner hash empties, then the outer one does |
| `{}` | `nil` |
| `[]` | `nil` |
| `{a: false}` | `{a: false}` — `false` is a value, not an absence |

**An empty hash is not sent as `{}` — the key it lives under disappears
entirely, and if that empties its parent, the parent disappears too.** The
recursion means a single deeply-nested `nil` can collapse several levels.

This is correct for the common case (optional sub-objects the caller never
filled in) and wrong for the case where the API treats `{}` as meaningful. The
live example is `forward_condition: {}` on a workflow edge: the caller writes an
empty hash, the gem strips the key, and the server rejects the edge for having
no condition — an error whose text names neither the gem nor the empty hash. See
[the workflow validator rules](/api-contract/workflow-validators.md), rule 3.

# Working around it

There is no "send this empty hash" flag on the serializer. The two available
routes are to send a **populated** object instead (for workflow edges,
`{ type: "unconditional" }` — which the server requires anyway), or to inject
the key after compaction via `request_options[:additional_body_parameters]`,
which [request serialization](/runtime/request-serialization.md) merges after
the compaction step.

# Citations

[1] `lib/elevenlabs/utils.rb` — `OMIT`, `deep_compact`.
[2] `test/utils_test.rb` — the compaction cases pinned as tests.
