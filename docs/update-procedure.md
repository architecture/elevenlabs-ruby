# ElevenLabs Ruby SDK — Update Procedure

This document describes how to update the Ruby SDK when the upstream [elevenlabs-python](https://github.com/elevenlabs/elevenlabs-python) SDK releases new versions.

## Prerequisites

- Python 3.8+ (for running the spec extraction script)
- Ruby 3.3+ with Bundler
- A local clone of this repository with the vendored Python SDK in `tmp-elevenlabs-python/`

## Step-by-step procedure

### 1. Pull the latest Python SDK

The Python SDK is vendored as a git repository in `tmp-elevenlabs-python/`. Pull the latest changes:

```bash
cd tmp-elevenlabs-python && git pull origin main && cd ..
```

Check what changed upstream:

```bash
cd tmp-elevenlabs-python && git log --oneline -10 && cd ..
```

Note the Python SDK version from `pyproject.toml`:

```bash
grep '^version' tmp-elevenlabs-python/pyproject.toml
```

### 2. Regenerate spec.json

Run the extraction script to parse the Python SDK and generate the Ruby spec:

```bash
python3 scripts/extract_spec.py
```

This reads the Python SDK source at `tmp-elevenlabs-python/src/elevenlabs/` and writes `lib/elevenlabs/spec.json`. The Ruby SDK dynamically generates all resource classes and methods from this file at runtime — no hand-written Ruby resource code is needed.

### 2a. Regenerate types.json and docs/types.md

`spec.json` only records operation signatures — it does not carry the nested shape of Pydantic-typed parameters like `workflow`, `conversation_config`, or `platform_settings`. A second extraction pass resolves those shapes so callers (and the optional runtime validator) have a machine-readable schema:

```bash
python3 scripts/extract_types.py        # writes lib/elevenlabs/types.json
python3 scripts/render_types_doc.py     # writes docs/types.md
```

Run both any time the Python SDK is refreshed; the artifacts stay in lock-step with `spec.json`.

### 3. Run the existing test suite

Verify that existing functionality is not broken:

```bash
bundle exec rake test
```

All tests must pass before proceeding.

### 4. Identify what changed

Compare the new spec with the previous version to identify:

- **New top-level namespaces** (e.g., `environment_variables`)
- **New sub-resources** (e.g., `workspace.auth_connections`)
- **New operations** on existing resources
- **New/changed parameters** on existing operations
- **Removed operations or parameters**

A quick way to list all namespaces:

```bash
ruby -Ilib -e '
require "json"
spec = JSON.parse(File.read("lib/elevenlabs/spec.json"))
puts spec["children"].keys.sort
'
```

To inspect a specific namespace:

```bash
ruby -Ilib -e '
require "json"
spec = JSON.parse(File.read("lib/elevenlabs/spec.json"))
ns = spec["children"]["NAMESPACE_NAME"]
ns["operations"].each { |op| puts "#{op["name"]}: #{op["request"]["method"]} #{op["request"]["path"]["template"]}" }
puts "children: #{ns["children"]&.keys}"
'
```

### 5. Write tests for new features

Add serialization tests in `test/operation_serialization_test.rb` for new operations. Each test should verify:

- HTTP method (GET, POST, PATCH, DELETE)
- Request path (with interpolated path parameters)
- Query parameters (for GET requests)
- JSON body or form data (for POST/PATCH requests)
- File upload entries (for multipart endpoints)

Add resource tests in `test/resources_test.rb` for:

- New top-level namespaces (add to the `test_all_top_level_namespaces_accessible` expected list)
- New sub-resource accessors (e.g., `assert_respond_to instance, :auth_connections`)
- New operation methods exist on the generated classes

Run the full suite again to confirm:

```bash
bundle exec rake test
```

### 6. Bump the version

Edit `lib/elevenlabs/version.rb`:

- **Patch** (0.x.Y) — bug fixes, parameter additions/removals on existing operations
- **Minor** (0.X.0) — new namespaces or sub-resources added
- **Major** (X.0.0) — breaking changes to the Ruby SDK interface

### 7. Update documentation

Update `README.md`:

- Version references in installation examples
- Available resources list (if new namespaces added)
- Add code examples for new namespaces
- Add a changelog entry under "Recent Updates"

### 8. Commit and push

```bash
git add -A
git commit -m "chore: bump to VERSION — update spec from elevenlabs-python vX.Y.Z"
git tag vVERSION
git push origin main --tags
```

Pushing to `main` triggers the GitHub Actions CI pipeline which:
1. Runs the full test suite
2. Publishes the gem to GitHub Packages (if version is new)

### 9. (Optional) Verify against the live API

If you have an `ELEVENLABS_API_KEY`, run the live verification script:

```bash
ELEVENLABS_API_KEY=your_key ruby scripts/verify_api.rb
```

## Troubleshooting

### extract_spec.py fails

- Ensure Python 3.8+ is installed
- Check that `tmp-elevenlabs-python/src/elevenlabs/` exists and is up to date
- The script parses AST; if the Python SDK changes its code generation pattern significantly, the extractor may need updating

### Tests fail after spec update

- Check if parameter names changed (the Python SDK sometimes renames params)
- Check if operations were removed or moved to different namespaces
- Update affected tests to match the new spec

### CI publish fails

- The CI workflow skips publishing if the version already exists on GitHub Packages
- Ensure `lib/elevenlabs/version.rb` has been bumped
- Check that the `GITHUB_TOKEN` has `packages:write` permission

## File reference

| File | Purpose |
|------|---------|
| `tmp-elevenlabs-python/` | Vendored upstream Python SDK (git repo) |
| `scripts/extract_spec.py` | Parses Python SDK, generates `spec.json` |
| `scripts/extract_types.py` | Parses `types/` Pydantic models, generates `types.json` |
| `scripts/render_types_doc.py` | Renders `types.json` into `docs/types.md` |
| `scripts/verify_api.rb` | Live API verification (requires API key) |
| `lib/elevenlabs/spec.json` | Generated spec driving the Ruby SDK |
| `lib/elevenlabs/types.json` | Generated type schemas for nested request bodies |
| `docs/types.md` | Human-readable rendering of `types.json` |
| `lib/elevenlabs/version.rb` | Gem version constant |
| `lib/elevenlabs/resources.rb` | Dynamic class generation from spec |
| `.github/workflows/gem-push.yml` | CI: test + publish pipeline |
