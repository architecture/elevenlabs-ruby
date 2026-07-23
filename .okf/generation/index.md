# Generation

Two independent extraction passes read the vendored `tmp-elevenlabs-python/`
checkout and produce the artifacts the gem is built from. They must be run
together; the third concept here is the failure mode the first one hits whenever
upstream introduces a new helper function.

* [spec.json extraction](spec-extraction.md) - how raw_client methods are parsed into the operation spec the gem generates itself from.
* [types.json extraction](type-extraction.md) - the second pass resolving Pydantic model shapes, and why it is kept separate.
* [The extractor's Dummy placeholder trap](extractor-dummy-trap.md) - unknown helper names become Dummy objects and surface as an anonymous JSON-serialization crash.
* [json.dumps-wrapped params leak silently](json-encoded-params.md) - the silent sibling of the Dummy trap: placeholders encoded into literals, shipped to the API for a whole release.
