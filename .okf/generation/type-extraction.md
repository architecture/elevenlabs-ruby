---
type: Pipeline
title: types.json extraction
description: The second extraction pass that resolves Pydantic model shapes into types.json, and why it is separate from spec.json.
resource: file://scripts/extract_types.py
tags: [codegen, upstream-python-sdk]
timestamp: 2026-07-23T12:34:33Z
---

# Overview

[spec.json](/generation/spec-extraction.md) knows that
`conversational_ai.agents.create` takes a `workflow:` keyword argument. It does
not know that a workflow is a map of nodes and edges, that edges carry a
discriminated-union `forward_condition`, or which fields of those are required.
That knowledge lives in the upstream SDK's `types/` Pydantic models, and
`scripts/extract_types.py` is the pass that resolves it into
`lib/elevenlabs/types.json`.

**Why two passes rather than one.** The request layer never needs the nested
shape — it serializes whatever hash the caller hands it (see
[request serialization](/runtime/request-serialization.md)). Only two consumers
want the shape: the opt-in [runtime type validator](/api-contract/types-validator.md)
and a human reading the docs. Fusing the passes would couple the gem's hot path
to a 900KB schema it never reads, and would make the operation spec churn every
time an unrelated model gained a field.

The two artifacts must nevertheless stay in **lock-step**: both are regenerated
from the same vendored Python SDK checkout, so running one without the other
leaves the validator describing a version of the API the operations no longer
match. [The update procedure](/release/update-procedure.md) runs them together
for exactly this reason.

# Artifacts

| Artifact | Produced by | Consumed by |
|----------|-------------|-------------|
| `lib/elevenlabs/types.json` | `scripts/extract_types.py` | `ElevenLabs::Types.validate!` |
| `docs/types.md` | `scripts/render_types_doc.py` | humans (~900KB, generated — never hand-edit) |

# What it cannot know

The extractor reads Pydantic *field definitions*: names, annotations, required
flags, literal values, discriminator mappings. It has no visibility into custom
`@model_validator` methods or server-side post-validation logic. Rules enforced
there are invisible to `types.json` by construction, which is why they are
captured by hand in [the workflow validator rules](/api-contract/workflow-validators.md).

# Citations

[1] `scripts/extract_types.py`, `scripts/render_types_doc.py`.
[2] `docs/update-procedure.md` §2a — "the artifacts stay in lock-step with `spec.json`".
