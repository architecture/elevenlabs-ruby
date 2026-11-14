---
type: Playbook
title: Versioning and publishing
description: What each version component signals in a spec-generated SDK, and how the CI pipeline publishes to GitHub Packages idempotently.
resource: file://.github/workflows/gem-push.yml
tags: [testing, upstream-python-sdk]
timestamp: 2026-11-13T12:00:00Z
---

# Overview

The gem is published to **GitHub Packages**, not RubyGems.org, by
`.github/workflows/gem-push.yml` on every push to `main`. Version lives in
`lib/elevenlabs/version.rb` and is currently `0.12.0`.

# What the components mean here

Because the interface is generated rather than written, semver has to be read
against the *spec*, not against hand-authored Ruby:

| Bump | Trigger |
|------|---------|
| **patch** | parameters added or removed on existing operations; bug fixes |
| **minor** | new top-level namespaces or sub-resources |
| **major** | breaking changes to the Ruby-facing interface |

Note the asymmetry: a *removed* parameter is only a patch, even though it can
break a caller, because upstream removals arrive continuously and are outside
this gem's control. Callers pinning a version is the intended mitigation.

The version constant is not cosmetic — it is stamped into the `User-Agent` and
`X-Fern-SDK-Version` headers on every request, per
[the HTTP transport](/runtime/http-transport.md), so a forgotten bump is visible
to the API server.

# The publish pipeline

Two jobs. `test` runs on pushes *and* pull requests as a matrix over Ruby
**3.3 and 4.0**, loading every `test/*_test.rb` in one Ruby process per version.
`publish` runs only on a push to `main`, `needs: test` (every matrix leg), with
`packages: write`, and builds on Ruby 3.3.

The 4.0 leg exists because Ruby 4.0 demoted stdlib pieces the gem leaned on:
`ostruct` became a bundled gem (so the `Gemfile` test group declares it), and
the `cgi` library was removed (so `lib/elevenlabs/utils.rb` requires
`cgi/escape`, which provides `CGI.escape` on both versions). Neither break shows
up on 3.3, so a single-version CI would ship them.

The publish step is **idempotent by string-matching**: it runs `gem push`, and if
the output contains `"already been pushed"` it exits 0 instead of failing. This
is what lets ordinary commits land on `main` without a version bump. The
trade-off is that a silent no-op and a successful publish look similar in the
logs — if you expected a release, confirm the version actually changed rather
than trusting a green check.

Any other `gem push` failure is a hard failure.

# Ordering

Bump the version *before* pushing to `main`; there is no tag-triggered release
path, so a tag pushed after the fact publishes nothing. The version bump is step
6 of [the update procedure](/release/update-procedure.md), ahead of the commit.

# Citations

[1] `.github/workflows/gem-push.yml` — the `test` and `publish` jobs.
[2] `lib/elevenlabs/version.rb`; `lib/elevenlabs/http_client.rb` `default_headers`.
