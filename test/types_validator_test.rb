require "test_helper"

class TypesValidatorTest < Minitest::Test
  VALID_WORKFLOW = {
    nodes: {
      "start"  => { type: "start" },
      "intake" => { type: "override_agent", label: "Intake", additional_prompt: "hello" },
      "check"  => { type: "tool", tools: [{ tool_id: "tool_123" }] },
      "done"   => { type: "end" },
    },
    edges: {
      "start_to_intake" => {
        source: "start", target: "intake",
        forward_condition: { type: "unconditional" },
      },
      "check_to_done" => {
        source: "check", target: "done",
        forward_condition: { type: "result", successful: true },
      },
    },
  }.freeze

  def test_valid_workflow_passes
    assert_nil ElevenLabs::Types.validate!(:AgentWorkflowRequestModel, VALID_WORKFLOW)
  end

  def test_accepts_string_keyed_hash
    workflow = JSON.parse(VALID_WORKFLOW.to_json)
    assert_nil ElevenLabs::Types.validate!(:AgentWorkflowRequestModel, workflow)
  end

  def test_missing_required_label_on_override_agent
    bad = { nodes: { "x" => { type: "override_agent" } } }
    err = assert_raises(ElevenLabs::Types::ValidationError) do
      ElevenLabs::Types.validate!(:AgentWorkflowRequestModel, bad)
    end
    assert_match(/label is required/, err.message)
    assert_equal ["AgentWorkflowRequestModel", "nodes", "[\"x\"]", "label"], err.path
  end

  def test_invalid_node_discriminant
    bad = { nodes: { "x" => { type: "not_a_real_type" } } }
    err = assert_raises(ElevenLabs::Types::ValidationError) do
      ElevenLabs::Types.validate!(:AgentWorkflowRequestModel, bad)
    end
    assert_match(/not a valid variant of AgentWorkflowRequestModelNodesValue/, err.message)
    assert_match(/expected one of/, err.message)
  end

  def test_invalid_forward_condition_variant
    bad = {
      edges: {
        "e" => { source: "a", target: "b", forward_condition: { type: "bogus" } },
      },
    }
    err = assert_raises(ElevenLabs::Types::ValidationError) do
      ElevenLabs::Types.validate!(:AgentWorkflowRequestModel, bad)
    end
    assert_match(/not a valid variant of WorkflowEdgeModelInputForwardCondition/, err.message)
  end

  # The OpenAPI example for forward_condition omits `type:` and relies on
  # the per-variant default, but the live server rejects that with
  # union_tag_not_found. The validator treats a missing discriminator as a
  # distinct error from an unknown variant — the fix is to add the field.
  def test_missing_discriminator_on_forward_condition
    bad = {
      edges: {
        "e" => { source: "a", target: "b", forward_condition: { condition: "foo" } },
      },
    }
    err = assert_raises(ElevenLabs::Types::ValidationError) do
      ElevenLabs::Types.validate!(:AgentWorkflowRequestModel, bad)
    end
    assert_match(/missing the required discriminator "type"/, err.message)
    assert_match(/expected one of/, err.message)
    assert_match(/server requires this field explicitly/, err.message)
  end

  def test_missing_discriminator_on_nodes_value
    bad = { nodes: { "x" => { label: "hi", additional_prompt: "greet" } } }
    err = assert_raises(ElevenLabs::Types::ValidationError) do
      ElevenLabs::Types.validate!(:AgentWorkflowRequestModel, bad)
    end
    assert_match(/missing the required discriminator "type"/, err.message)
    assert_match(/AgentWorkflowRequestModelNodesValue/, err.message)
  end

  def test_missing_required_field_on_edge
    # source is required on WorkflowEdgeModelInput
    bad = { edges: { "e" => { target: "b" } } }
    err = assert_raises(ElevenLabs::Types::ValidationError) do
      ElevenLabs::Types.validate!(:AgentWorkflowRequestModel, bad)
    end
    assert_match(/source is required/, err.message)
  end

  def test_literal_value_mismatch_rejected
    # A variant class ships with type: Literal["start"] — passing a wrong
    # string for an already-resolved variant should be caught.
    bad_variant = { type: "not_start" }
    err = assert_raises(ElevenLabs::Types::ValidationError) do
      ElevenLabs::Types.validate!(:AgentWorkflowRequestModelNodesValue_Start, bad_variant)
    end
    assert_match(/must be "start"/, err.message)
  end

  def test_enum_validation
    err = assert_raises(ElevenLabs::Types::ValidationError) do
      ElevenLabs::Types.validate!(:TransferTypeEnum, "not_a_real_transfer_type")
    end
    assert_match(/not a valid TransferTypeEnum/, err.message)
    assert_match(/blind/, err.message)
  end

  def test_enum_accepts_valid_value
    assert_nil ElevenLabs::Types.validate!(:TransferTypeEnum, "blind")
  end

  def test_unknown_type_is_silent_forward_compat
    # Don't block callers when a future SDK adds a type we haven't regenerated for.
    assert_nil ElevenLabs::Types.validate!(:SomeCompletelyMadeUpType, { anything: true })
  end

  def test_unknown_keys_are_tolerated
    # Pydantic models use extra="allow"; the validator must match that.
    tolerant = { nodes: {}, edges: {}, prevent_subagent_loops: false, future_field: "whatever" }
    assert_nil ElevenLabs::Types.validate!(:AgentWorkflowRequestModel, tolerant)
  end

  def test_non_hash_value_rejected_for_model
    err = assert_raises(ElevenLabs::Types::ValidationError) do
      ElevenLabs::Types.validate!(:AgentWorkflowRequestModel, "not a hash")
    end
    assert_match(/expected a Hash/, err.message)
  end

  def test_describe_returns_schema_for_known_type
    info = ElevenLabs::Types.describe(:AgentWorkflowRequestModel)
    refute_nil info
    assert_equal "model", info["kind"]
    assert(info["fields"].any? { |f| f["name"] == "nodes" })
  end

  def test_describe_returns_nil_for_unknown_type
    assert_nil ElevenLabs::Types.describe(:NotARealType)
  end
end
