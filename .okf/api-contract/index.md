# API contract

Knowledge about the live ElevenLabs API that is not derivable from any schema,
plus the local validator that catches the part of it that is expressible.
Everything here was learned by making requests, not by reading types.

* [Server-side workflow validation rules](workflow-validators.md) - three rules enforced after Pydantic deserialization, invisible to the public schema.
* [Opt-in runtime type validator](types-validator.md) - what `ElevenLabs::Types.validate!` enforces, and its three deliberate holes.
