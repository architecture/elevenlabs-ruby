---
type: Gotcha
title: The extractor's Dummy placeholder trap
description: Unknown helper names in the upstream SDK silently become Dummy objects, which surface much later as a JSON-serialization crash naming no operation.
tags: [codegen, upstream-python-sdk]
timestamp: 2026-07-23T14:10:00Z
---

# Overview

`scripts/extract_spec.py` evaluates upstream argument expressions rather than
pattern-matching them (see [spec extraction](/generation/spec-extraction.md)).
To survive names it has never seen, `eval_node` catches `NameError`, binds the
missing name to a `Dummy` object, and retries — forever, one name at a time.

`Dummy` absorbs everything: calling it returns itself, attribute access returns
itself. That is what makes the extractor robust, and it is also the trap. (This
is the *loud* failure mode — for the silent one, where a known helper mangles
the placeholder without raising, see
[the json.dumps leak](/generation/json-encoded-params.md).) A
`Dummy` standing in for a helper the SDK *actually applies to a parameter*
silently **replaces the parameter placeholder**, destroying the wiring between
the Ruby keyword argument and its position in the request. Nothing fails at that
point. The failure appears at the end, when the assembled spec is serialized:

```
TypeError: Object of type Dummy is not JSON serializable
```

The message names no operation, no file, and no parameter.

# Symptom → cause → fix

**Trigger.** Upstream wraps a request param in a new helper, e.g.
`serialize_datetime(start_date) if start_date is not None else None`.

**Fix.** Register the helper in `EVAL_GLOBALS` as a **pass-through identity** so
the placeholder survives evaluation intact:

```python
def serialize_datetime(value: Any = None, *_: Any, **__: Any) -> Any:
    return value

EVAL_GLOBALS["serialize_datetime"] = serialize_datetime
EVAL_GLOBALS["serialize_date"] = serialize_datetime
```

The helpers already registered this way — `jsonable_encoder`,
`convert_and_respect_annotation_metadata`, `construct_type`, `serialize_datetime`,
`serialize_date` — are each a past instance of this same bug. Treat that list as
a changelog of upstream helpers, not as a fixed set.

**Identity is not always the right answer.** When the helper's transformation is
real on the wire — `json.dumps` genuinely changes what the server receives — a
pass-through would silently corrupt the payload instead. That case is
[the json.dumps leak](/generation/json-encoded-params.md), and it needs an
encoding marker rather than an identity stub.

**Locating the offending operation.** Since the crash is anonymous, walk every
`raw_client.py` method through `parse_method` and check each result for a
`Dummy` instance; the method that yields one is the operation to fix.

# Why identity and not a stub

A helper that *transforms* a value at runtime (encoding a datetime, say) is
irrelevant during extraction — the input is a placeholder string, not a real
datetime. What matters is that the placeholder comes out the other side
recognizable, so the generated spec can wire the Ruby parameter to the right
query key or body path. Identity preserves that; anything else does not.

# Citations

[1] `scripts/extract_spec.py` — `class Dummy`, `EVAL_GLOBALS`, `eval_node`.
[2] `docs/update-procedure.md` — "Troubleshooting → extract_spec.py fails".
