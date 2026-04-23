# ElevenLabs Ruby SDK — Development Guide

## Project overview

Ruby SDK for the ElevenLabs API, auto-generated from the upstream Python SDK. All resource classes and methods are dynamically created at runtime from `lib/elevenlabs/spec.json`.

## Update procedure

When updating the gem to track the latest elevenlabs-python SDK:

1. **Pull latest Python SDK**: `cd tmp-elevenlabs-python && git pull origin main && cd ..`
2. **Regenerate spec**: `python3 scripts/extract_spec.py` — writes `lib/elevenlabs/spec.json`
3. **Regenerate types**: `python3 scripts/extract_types.py && python3 scripts/render_types_doc.py` — writes `lib/elevenlabs/types.json` and `docs/types.md`
4. **Run tests**: `bundle exec rake test` — all existing tests must pass
5. **Identify changes**: Check for new namespaces, operations, and parameters in the updated spec
6. **Add tests**: Write serialization tests in `test/operation_serialization_test.rb` and resource tests in `test/resources_test.rb` for any new features
7. **Bump version**: Edit `lib/elevenlabs/version.rb` (minor bump for new namespaces, patch for param changes)
8. **Update README**: Version refs, namespace list, examples, changelog entry
9. **Commit, tag, push**: Push to `main` triggers CI (test + publish to GitHub Packages)

See `docs/update-procedure.md` for the full detailed guide.

## Key commands

```bash
# Run tests
bundle exec rake test

# Regenerate spec from Python SDK
python3 scripts/extract_spec.py

# Live API verification (requires ELEVENLABS_API_KEY)
ruby scripts/verify_api.rb

# Build gem locally
gem build elevenlabs-ruby.gemspec
```

## Architecture

- `lib/elevenlabs/spec.json` — 750KB+ spec generated from Python SDK (source of truth for all operations)
- `lib/elevenlabs/types.json` — Pydantic type schemas (models, unions, enums) for nested request bodies
- `lib/elevenlabs/resources.rb` — Dynamic class generation from spec at runtime
- `lib/elevenlabs/types.rb` — Optional runtime validator (`ElevenLabs::Types.validate!`)
- `lib/elevenlabs/client.rb` — Main client with dynamic resource accessors
- `lib/elevenlabs/operation_executor.rb` — Executes operations with request serialization
- `lib/elevenlabs/http_client.rb` — Faraday-based HTTP client with redirect handling
- `tmp-elevenlabs-python/` — Vendored Python SDK git repo (not published with gem)
- `scripts/extract_spec.py` — Operation spec extraction script
- `scripts/extract_types.py` — Type schema extraction script
- `scripts/render_types_doc.py` — Renders `types.json` into `docs/types.md`

## Testing conventions

- Tests use Minitest with a `FakeHTTP` stub to capture requests without hitting the network
- Serialization tests verify: HTTP method, path, query params, JSON/form body, file entries
- Resource tests verify: class generation, method existence, child accessors, caching
- New features must have corresponding tests before version bump
