# Update Log

## 2026-07-23
### v0.9.0 spec refresh (elevenlabs-python v2.59.0)
* **Creation**: [json.dumps-wrapped params leak silently](generation/json-encoded-params.md) — the silent sibling of the Dummy trap, found during the elevenlabs-python v2.59.0 refresh; 14 fields across 9 operations had been shipping placeholder text to the API.
* **Update**: [the Dummy trap](generation/extractor-dummy-trap.md) now distinguishes the loud failure from the silent one, and notes that identity pass-through is wrong when the helper's transformation is real on the wire.
* **Update**: [request serialization](runtime/request-serialization.md) — added the `encode: "json"` assignment marker and param-driven headers.
* **Update**: [HTTP transport](runtime/http-transport.md) — typed multipart parts are never split, and the `Faraday::Multipart::Param` → `ParamPart` correction (every typed part raised `NameError` before v0.9.0).
* **Update**: [tracking upstream](release/update-procedure.md) — added the post-regeneration placeholder assertion, since no test catches a silent leak.
* **Update**: [versioning and publishing](release/versioning-and-publish.md) — current version 0.8.1 → 0.9.0.

### Bundle seeded
* **Creation**: bundle seeded at `.okf/` against gem v0.8.1 (spec from elevenlabs-python v2.56.0), with four areas — [generation](generation/), [runtime](runtime/), [api-contract](api-contract/), [release](release/).
* **Creation**: the extraction pipeline and its failure mode — [spec.json extraction](generation/spec-extraction.md), [types.json extraction](generation/type-extraction.md), [the Dummy placeholder trap](generation/extractor-dummy-trap.md).
* **Creation**: runtime behaviour — [dynamic resource graph](runtime/dynamic-resource-graph.md), [request serialization](runtime/request-serialization.md), [HTTP transport](runtime/http-transport.md), [OMIT and deep_compact](runtime/omit-and-deep-compact.md), [untyped response pass-through](runtime/response-pass-through.md).
* **Creation**: API knowledge no schema carries — [server-side workflow validation rules](api-contract/workflow-validators.md), [opt-in runtime type validator](api-contract/types-validator.md).
* **Creation**: release invariants — [tracking upstream elevenlabs-python](release/update-procedure.md), [versioning and publishing](release/versioning-and-publish.md).
* **Note**: existing docs under `docs/` were left in place and are linked, not absorbed. `docs/types.md` and `docs/namespaces.md` remain generated artifacts; `docs/workflow-gotchas.md` remains hand-maintained.
