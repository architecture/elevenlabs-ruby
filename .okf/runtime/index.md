# Runtime

What the gem does with the generated artifacts on every call — from building the
class tree at load time, through serializing a request, to handing the response
back. Requests are heavily spec-driven; responses are not modelled at all.

* [Dynamic resource graph](dynamic-resource-graph.md) - spec.json becomes a tree of anonymous classes with real method signatures at load time.
* [Request serialization](request-serialization.md) - how a flat params hash becomes path, query, body, and multipart entries.
* [HTTP transport](http-transport.md) - Faraday setup, header precedence, the manual redirect loop, timeouts, upload cleanup.
* [OMIT sentinel and deep_compact](omit-and-deep-compact.md) - why nil isn't enough, and the empty-hash rule that silently drops keys.
* [Responses are passed through untyped](response-pass-through.md) - parsed JSON returned verbatim, bare arrays included, pinned by regression tests.
