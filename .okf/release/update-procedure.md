---
type: Playbook
title: Tracking upstream elevenlabs-python
description: The invariants behind the spec-refresh procedure — what must move together, what tests must be written, and what the steps will not tell you.
tags: [upstream-python-sdk, codegen, testing]
timestamp: 2026-07-23T14:10:00Z
---

# Overview

The runnable, copy-pasteable steps live in
`docs/update-procedure.md` and are not repeated
here. What follows is the judgment around them — the parts that a step list
states as commands but not as reasons, and that go wrong quietly when skipped.

# The invariants

**Three artifacts move as one.** `spec.json`, `types.json`, and `docs/types.md`
are all derived from the same `tmp-elevenlabs-python/` checkout. Regenerating
one without the others leaves [the validator](/api-contract/types-validator.md)
describing a different API version than the one the operations call. Run
`extract_spec.py`, `extract_types.py`, and `render_types_doc.py` in the same
pass, always.

**Generated files are never hand-edited.** `docs/types.md` is ~900KB of rendered
output; a manual fix there survives exactly until the next regeneration. If the
output is wrong, the extractor is wrong — see
[spec extraction](/generation/spec-extraction.md) and
[type extraction](/generation/type-extraction.md).

**`docs/workflow-gotchas.md` is the exception.** It is hand-maintained and
records server behaviour no extractor can see, so a refresh neither updates nor
validates it — see [the workflow rules](/api-contract/workflow-validators.md).

**Green tests do not mean full coverage.** The suite is written against the
*previous* spec. A new namespace with no tests passes trivially: nothing
references it. This is why the procedure has an explicit "identify what changed"
step driven by introspecting `spec.json` rather than by reading a diff — the
generated interface is not greppable, per
[the resource graph](/runtime/dynamic-resource-graph.md).

# What "add tests for new features" actually means

New operations need serialization tests asserting HTTP method, interpolated
path, query params, JSON/form body, and file entries — the five things
[request serialization](/runtime/request-serialization.md) derives from the spec,
each of which can silently change when upstream renames a parameter.

New namespaces additionally need entries in `test/resources_test.rb`; the
`test_all_top_level_namespaces_accessible` list is an **explicit enumeration**,
so a namespace added to the spec but not to that list is untested and unnoticed.

# When extraction breaks

The characteristic *loud* failure is `TypeError: Object of type Dummy is not
JSON serializable`, which names no operation. Diagnosis and fix are in
[the Dummy trap](/generation/extractor-dummy-trap.md).

The *silent* failure leaves a `__param__…__` placeholder baked into the spec as
a literal, and no test will catch it. Assert on it after every regeneration:

```bash
grep -o '__param__[a-z_0-9]*__' lib/elevenlabs/spec.json | sort | uniq -c
```

Any output is a bug — see [the json.dumps leak](/generation/json-encoded-params.md).

# Citations

[1] `docs/update-procedure.md` — the full step-by-step runbook and troubleshooting table.
[2] `CLAUDE.md` — the condensed nine-step version.
