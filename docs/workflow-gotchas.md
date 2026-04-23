# Workflow graph: server-side validation that the types don't describe

The `workflow` parameter on `conversational_ai.agents.create` /
`agents.update` accepts an `AgentWorkflowRequestModel`. The Pydantic
schema (surfaced in `types.json` and `docs/types.md`) describes most of
what the server needs, but three rules are enforced by server-side
**model validators** that run after Pydantic deserialization, so they
are invisible in the public schema and can't be caught by the gem's
bundled `ElevenLabs::Types.validate!`.

This page documents those rules. If you hit a `422 value_error` on
`agents.create` with a workflow payload, check here first.

Source: empirically discovered via iterative 422 debugging against
`api.elevenlabs.io` in 2026-04.

---

## Rule 1: the start node must be keyed literally `start_node`

**Symptom**

```json
{"detail": [{
  "type": "value_error",
  "loc": ["body", "workflow", "nodes"],
  "msg": "Value error, Workflow must contain a start node."
}]}
```

The server's validator looks up the start node by **key**, not by
scanning node values for `type == "start"`. A node keyed anything else
(`"start"`, `"entry"`, `"begin"`, …) is not recognized, even when
`type: "start"` is set correctly on the value.

<details>
<summary>Rejected payload</summary>

```ruby
nodes: {
  "start" => { type: "start", edge_order: ["start_to_intake"] },
  # …
}
```
</details>

<details>
<summary>Accepted payload</summary>

```ruby
nodes: {
  "start_node" => { type: "start", edge_order: ["start_to_intake"] },
  # …
}
# All edges that previously said source: "start" must now say source: "start_node".
```
</details>

The canonical OpenAPI example (`AgentWorkflowRequestModel.example`)
uses `start_node` as the key — reflects this convention.

---

## Rule 2: `forward_condition` requires an explicit `type:` discriminator

**Symptom**

```json
{
  "type": "union_tag_not_found",
  "loc": ["body", "workflow", "edges", "<edge_id>", "forward_condition"],
  "msg": "Unable to extract tag using discriminator 'type'",
  "ctx": {"discriminator": "'type'"}
}
```

Every variant of `WorkflowEdgeModelInputForwardCondition` (`llm`,
`result`, `unconditional`, `expression`) has a `type` field with a
default value (`"llm"`, `"result"`, `"unconditional"`, `"expression"`).
The OpenAPI example omits `type` and relies on those defaults. The live
server does **not** apply the defaults on input — it requires the
client to send the discriminator explicitly.

<details>
<summary>Rejected payload</summary>

```ruby
forward_condition: { condition: "user confirmed" }         # missing type
forward_condition: { successful: true }                    # missing type
forward_condition: {}                                      # missing type (and see Rule 3)
```
</details>

<details>
<summary>Accepted payload</summary>

```ruby
forward_condition: { type: "llm",           condition: "user confirmed" }
forward_condition: { type: "result",        successful: true }
forward_condition: { type: "unconditional" }
```
</details>

The bundled `Types.validate!` validator catches this via required-field
checks on discriminated unions — so unit-testing your workflow payload
through `Types.validate!(:AgentWorkflowRequestModel, payload)` will
surface it before you make the API call.

---

## Rule 3: `forward_condition` cannot be empty `{}`

**Symptom**

```json
{
  "type": "value_error",
  "loc": ["body", "workflow", "edges", "<edge_id>"],
  "msg": "Value error, An edge must have at least one condition (forward or backward)."
}
```

Even though `forward_condition` is marked optional on the edge schema,
an empty-object `{}` is rejected. Unconditional edges must carry
`{ type: "unconditional" }` explicitly (see Rule 2). If you want a
truly-always-traversed edge, write it out.

This rule also interacts subtly with `ElevenLabs::Utils.deep_compact`,
which strips empty hashes. If you construct an edge as
`{source:, target:, forward_condition: {}}`, the gem will strip
`forward_condition` entirely before sending, leading to the same
"at least one condition" error.

---

## Minimal accepted workflow

For reference, the smallest workflow payload the server will accept:

```ruby
{
  nodes: {
    "start_node" => { type: "start", edge_order: ["go"] },
    "done"       => { type: "end" }
  },
  edges: {
    "go" => {
      source: "start_node",
      target: "done",
      forward_condition: { type: "unconditional" }
    }
  }
}
```

Everything else on top of this (intake sub-agents, tool nodes with
`tools: [{ tool_id: ... }]`, `result`-gated branches, `llm`-gated
transitions) builds on the same three rules.

---

## Why these aren't in `types.json`

`types.json` is extracted from the upstream Python SDK's Pydantic field
definitions — it knows field names, types, required flags, literal
values, and discriminator mappings. What it can't know about is custom
`@model_validator` or server-side post-validation logic, which is where
Rules 1 and 3 live. Rule 2 is technically expressible (by treating a
discriminator field with a default as still-required on input) and
`Types.validate!` does enforce it.
