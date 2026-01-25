require "test_helper"

class UtilsTest < Minitest::Test
  def test_deep_dup_with_hash
    original = { "a" => { "b" => [1, 2, 3] } }
    duplicated = ElevenLabs::Utils.deep_dup(original)

    assert_equal original, duplicated
    refute_same original, duplicated
    refute_same original["a"], duplicated["a"]
    refute_same original["a"]["b"], duplicated["a"]["b"]
  end

  def test_deep_dup_with_array
    original = [1, [2, 3], { "key" => "value" }]
    duplicated = ElevenLabs::Utils.deep_dup(original)

    assert_equal original, duplicated
    refute_same original, duplicated
    refute_same original[1], duplicated[1]
    refute_same original[2], duplicated[2]
  end

  def test_deep_dup_with_primitives
    assert_equal 42, ElevenLabs::Utils.deep_dup(42)
    assert_equal "hello", ElevenLabs::Utils.deep_dup("hello")
    assert_equal true, ElevenLabs::Utils.deep_dup(true)
    assert_nil ElevenLabs::Utils.deep_dup(nil)
  end

  def test_assign_path_to_hash
    container = {}
    result = ElevenLabs::Utils.assign_path(container, ["a", "b", "c"], "value")

    assert_equal({ "a" => { "b" => { "c" => "value" } } }, result)
  end

  def test_assign_path_to_array
    container = []
    result = ElevenLabs::Utils.assign_path(container, [0, 1, 2], "value")

    assert_equal [[nil, [nil, nil, "value"]]], result
  end

  def test_assign_path_mixed_hash_and_array
    container = {}
    result = ElevenLabs::Utils.assign_path(container, ["items", 0, "name"], "test")

    assert_equal({ "items" => [{ "name" => "test" }] }, result)
  end

  def test_assign_path_raises_on_empty_path
    error = assert_raises(ArgumentError) do
      ElevenLabs::Utils.assign_path({}, [], "value")
    end
    assert_equal "path cannot be empty", error.message
  end

  def test_deep_compact_removes_omit_values
    input = {
      "keep" => "value",
      "omit" => ElevenLabs::OMIT,
      "nested" => {
        "keep" => "nested_value",
        "omit" => ElevenLabs::OMIT
      }
    }

    result = ElevenLabs::Utils.deep_compact(input)

    assert_equal({ "keep" => "value", "nested" => { "keep" => "nested_value" } }, result)
  end

  def test_deep_compact_removes_nil_values
    input = {
      "keep" => "value",
      "nil_value" => nil,
      "nested" => {
        "keep" => "nested_value",
        "nil_nested" => nil
      }
    }

    result = ElevenLabs::Utils.deep_compact(input)

    assert_equal({ "keep" => "value", "nested" => { "keep" => "nested_value" } }, result)
  end

  def test_deep_compact_with_arrays
    input = ["keep", nil, ElevenLabs::OMIT, "also_keep"]
    result = ElevenLabs::Utils.deep_compact(input)

    assert_equal ["keep", "also_keep"], result
  end

  def test_deep_compact_returns_nil_for_empty_hash
    input = { "omit" => ElevenLabs::OMIT }
    result = ElevenLabs::Utils.deep_compact(input)

    assert_nil result
  end

  def test_symbolize_keys
    input = { "key1" => "value1", "key2" => "value2" }
    result = ElevenLabs::Utils.symbolize_keys(input)

    assert_equal({ key1: "value1", key2: "value2" }, result)
  end

  def test_encode_path_segment
    assert_equal "hello", ElevenLabs::Utils.encode_path_segment("hello")
    assert_equal "hello+world", ElevenLabs::Utils.encode_path_segment("hello world")
    assert_equal "hello%2Fworld", ElevenLabs::Utils.encode_path_segment("hello/world")
    assert_equal "test%40example.com", ElevenLabs::Utils.encode_path_segment("test@example.com")
  end
end
