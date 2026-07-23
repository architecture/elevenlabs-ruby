---
type: Component
title: Dynamic resource graph
description: How spec.json becomes a tree of anonymous Ruby classes with real method signatures at load time, and what that costs.
resource: file://lib/elevenlabs/resources.rb
tags: [codegen]
timestamp: 2026-07-23T12:34:33Z
---

# Overview

`ElevenLabs::Resources.build_resources` walks [spec.json](/generation/spec-extraction.md)
once at load time and builds a parallel tree of `Class.new(Base)` objects — one
per namespace — registered by path in `@registry`. `ElevenLabs::Client` then
calls `build_interface` **at class-definition time** (the bare `build_interface`
at the bottom of `client.rb`), so the whole API surface exists the moment
`require "elevenlabs"` returns.

The consequence worth knowing: **the gem's public interface is not greppable.**
`grep "def create"` finds nothing. To learn what exists you read `spec.json`, or
introspect a live client — which is why [the update procedure](/release/update-procedure.md)
ships `ruby -e` snippets for listing namespaces and operations rather than
pointing at source files.

# How methods are generated

Operations are not defined with `define_method` taking a splat. Each one is
rendered as **Ruby source text** and `class_eval`'d:

```ruby
def create(agent_id, name: ElevenLabs::Utils::OMIT)
  params = { agent_id: agent_id, name: name }
  @executor.call(self.class::OPERATION_CREATE_0, params)
end
```

This is deliberate. It gives every generated method a **real arity and real
keyword names**, so `ArgumentError` on a typo'd keyword comes from Ruby itself,
and `method(:create).parameters` reports the truth. The operation hash is frozen
into a class constant (`OPERATION_<NAME>_<idx>`) rather than captured in a
closure, so the generated body stays a plain lookup. The `_<idx>` suffix exists
because two operations on one node can share a name.

Only `params` reaches [the executor](/runtime/request-serialization.md); the
`OMIT` default is what distinguishes "caller passed nothing" from "caller passed
nil", as described in [OMIT and deep_compact](/runtime/omit-and-deep-compact.md).

# Caching and identity

Child accessors memoize into a per-instance `@children_cache`, and
`Client`'s top-level accessors into `@resource_cache`. So
`client.conversational_ai.agents` returns the **same object** on every call for
a given client, and every node in the tree shares that client's one
`HTTPClient` and one `OperationExecutor`. Two different `Client` instances share
no state — which is what makes per-client `api_key` and `base_url` isolation
work.

Class constant names are derived from the accessor name (`auth_connections` →
`AuthConnections`) and set only if not already defined, so a name collision
between two namespaces at different depths silently keeps the first. The
registry, keyed by full path, is the reliable lookup.

# Citations

[1] `lib/elevenlabs/resources.rb` — `build_node`, `define_operations`, `build_method_definition`.
[2] `lib/elevenlabs/client.rb` — `build_interface`, `define_resource_accessor`.
