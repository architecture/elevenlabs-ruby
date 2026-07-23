---
okf_version: "0.1"
---

# ElevenLabs Ruby SDK — knowledge bundle

This gem is **generated, not written**: every namespace and method is built at
load time from `lib/elevenlabs/spec.json`, which is extracted from the vendored
upstream `elevenlabs-python` SDK. That one fact shapes everything else here —
what you change to add an endpoint, why the interface isn't greppable, and where
knowledge has to be recorded by hand because no extractor can see it.

This bundle captures the non-obvious: pipeline mechanics and their failure
modes, runtime behaviours that surprise callers, API rules that exist only on
the server, and the release invariants. It does **not** restate the generated
reference material — `docs/types.md` and `docs/namespaces.md` remain the
authority for what operations exist, and are linked from the concepts that
depend on them.

# Areas

* [Generation](generation/) - the two extraction passes that turn the Python SDK into `spec.json` and `types.json`, and how they fail.
* [Runtime](runtime/) - what the gem does with those artifacts on each call: class building, request serialization, transport, response handling.
* [API contract](api-contract/) - rules the live ElevenLabs API enforces that no schema expresses, and the opt-in validator that catches what it can.
* [Release](release/) - tracking upstream, versioning policy, and the publish pipeline.

# Start here

* [spec.json extraction](generation/spec-extraction.md) - the pipeline the whole SDK is downstream of.
* [Dynamic resource graph](runtime/dynamic-resource-graph.md) - how that spec becomes callable Ruby.
* [Tracking upstream elevenlabs-python](release/update-procedure.md) - the invariants behind a spec refresh.

# External references

* `docs/update-procedure.md` - the runnable step-by-step refresh runbook.
* `docs/workflow-gotchas.md` - hand-maintained workflow 422 reference.
* `docs/types.md` - generated Pydantic type reference (~900KB).
* `docs/namespaces.md` - generated namespace reference.
