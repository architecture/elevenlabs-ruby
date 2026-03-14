require "test_helper"

class OperationExecutorTest < Minitest::Test
  class FakeHTTP
    attr_reader :calls

    def initialize
      @calls = []
    end

    def request(**kwargs)
      @calls << kwargs.merge(kind: :request)
      {}
    end

    def stream(**kwargs)
      @calls << kwargs.merge(kind: :stream)
      Enumerator.new {}
    end
  end

  def setup
    @http = FakeHTTP.new
    @executor = ElevenLabs::OperationExecutor.new(@http)
  end

  # --- Path building ---

  def test_path_substitution_single_param
    spec = {
      request: {
        method: "GET",
        path: { template: "v1/voices/{voice_id}", params: ["voice_id"] },
        query: [], json: nil, form: nil, files: [],
        headers: {}, streaming: false, force_multipart: false
      }
    }

    @executor.call(spec, { voice_id: "abc123" })
    assert_equal "v1/voices/abc123", @http.calls.last[:path]
  end

  def test_path_substitution_multiple_params
    spec = {
      request: {
        method: "DELETE",
        path: { template: "v1/convai/conversations/{conversation_id}/files/{file_id}", params: ["conversation_id", "file_id"] },
        query: [], json: nil, form: nil, files: [],
        headers: {}, streaming: false, force_multipart: false
      }
    }

    @executor.call(spec, { conversation_id: "conv_1", file_id: "file_2" })
    assert_equal "v1/convai/conversations/conv_1/files/file_2", @http.calls.last[:path]
  end

  def test_path_params_url_encoded
    spec = {
      request: {
        method: "GET",
        path: { template: "v1/items/{item_id}", params: ["item_id"] },
        query: [], json: nil, form: nil, files: [],
        headers: {}, streaming: false, force_multipart: false
      }
    }

    @executor.call(spec, { item_id: "hello world/foo" })
    assert_equal "v1/items/hello+world%2Ffoo", @http.calls.last[:path]
  end

  # --- Query building ---

  def test_query_from_params
    spec = {
      request: {
        method: "GET",
        path: { template: "v1/items", params: [] },
        query: [
          { name: "page_size", param: "page_size" },
          { name: "cursor", param: "cursor" }
        ],
        json: nil, form: nil, files: [],
        headers: {}, streaming: false, force_multipart: false
      }
    }

    @executor.call(spec, { page_size: 10, cursor: "abc" })
    assert_equal({ "page_size" => 10, "cursor" => "abc" }, @http.calls.last[:query])
  end

  def test_query_skips_nil_values
    spec = {
      request: {
        method: "GET",
        path: { template: "v1/items", params: [] },
        query: [
          { name: "page_size", param: "page_size" },
          { name: "cursor", param: "cursor" }
        ],
        json: nil, form: nil, files: [],
        headers: {}, streaming: false, force_multipart: false
      }
    }

    @executor.call(spec, { page_size: 10, cursor: nil })
    assert_equal({ "page_size" => 10 }, @http.calls.last[:query])
  end

  def test_query_skips_omit_values
    spec = {
      request: {
        method: "GET",
        path: { template: "v1/items", params: [] },
        query: [
          { name: "page_size", param: "page_size" },
          { name: "filter", param: "filter" }
        ],
        json: nil, form: nil, files: [],
        headers: {}, streaming: false, force_multipart: false
      }
    }

    @executor.call(spec, { page_size: 5, filter: ElevenLabs::Utils::OMIT })
    assert_equal({ "page_size" => 5 }, @http.calls.last[:query])
  end

  def test_query_literal_values
    spec = {
      request: {
        method: "GET",
        path: { template: "v1/items", params: [] },
        query: [
          { name: "version", literal: "v2" },
          { name: "page_size", param: "page_size" }
        ],
        json: nil, form: nil, files: [],
        headers: {}, streaming: false, force_multipart: false
      }
    }

    @executor.call(spec, { page_size: 10 })
    assert_equal({ "version" => "v2", "page_size" => 10 }, @http.calls.last[:query])
  end

  def test_query_additional_query_parameters
    spec = {
      request: {
        method: "GET",
        path: { template: "v1/items", params: [] },
        query: [{ name: "page_size", param: "page_size" }],
        json: nil, form: nil, files: [],
        headers: {}, streaming: false, force_multipart: false
      }
    }

    @executor.call(spec, { page_size: 5, request_options: { additional_query_parameters: { "debug" => true } } })
    query = @http.calls.last[:query]
    assert_equal 5, query["page_size"]
    assert_equal true, query["debug"]
  end

  # --- JSON body building ---

  def test_json_body_from_assignments
    spec = {
      request: {
        method: "POST",
        path: { template: "v1/items", params: [] },
        query: [],
        json: {
          literal: nil,
          assignments: [
            { path: ["name"], param: "name" },
            { path: ["count"], param: "count" }
          ]
        },
        form: nil, files: [],
        headers: {}, streaming: false, force_multipart: false
      }
    }

    @executor.call(spec, { name: "hello", count: 42 })
    assert_equal({ "name" => "hello", "count" => 42 }, @http.calls.last[:json])
  end

  def test_json_body_with_literal_and_assignments
    spec = {
      request: {
        method: "POST",
        path: { template: "v1/items", params: [] },
        query: [],
        json: {
          literal: { "type" => "custom" },
          assignments: [
            { path: ["name"], param: "name" }
          ]
        },
        form: nil, files: [],
        headers: {}, streaming: false, force_multipart: false
      }
    }

    @executor.call(spec, { name: "test" })
    body = @http.calls.last[:json]
    assert_equal "custom", body["type"]
    assert_equal "test", body["name"]
  end

  def test_json_body_compacts_omit_values
    spec = {
      request: {
        method: "POST",
        path: { template: "v1/items", params: [] },
        query: [],
        json: {
          literal: nil,
          assignments: [
            { path: ["name"], param: "name" },
            { path: ["optional"], param: "optional" }
          ]
        },
        form: nil, files: [],
        headers: {}, streaming: false, force_multipart: false
      }
    }

    @executor.call(spec, { name: "hello", optional: ElevenLabs::Utils::OMIT })
    assert_equal({ "name" => "hello" }, @http.calls.last[:json])
  end

  def test_additional_body_parameters_merged
    spec = {
      request: {
        method: "POST",
        path: { template: "v1/items", params: [] },
        query: [],
        json: {
          literal: nil,
          assignments: [{ path: ["name"], param: "name" }]
        },
        form: nil, files: [],
        headers: {}, streaming: false, force_multipart: false
      }
    }

    @executor.call(spec, {
      name: "hello",
      request_options: { additional_body_parameters: { "extra_field" => "value" } }
    })
    body = @http.calls.last[:json]
    assert_equal "hello", body["name"]
    assert_equal "value", body["extra_field"]
  end

  # --- Form body building ---

  def test_form_body_from_assignments
    spec = {
      request: {
        method: "POST",
        path: { template: "v1/upload", params: [] },
        query: [], json: nil,
        form: {
          literal: nil,
          assignments: [
            { path: ["model_id"], param: "model_id" }
          ]
        },
        files: [],
        headers: {}, streaming: false, force_multipart: false
      }
    }

    @executor.call(spec, { model_id: "scribe_v1" })
    assert_equal({ "model_id" => "scribe_v1" }, @http.calls.last[:form])
  end

  # --- File entry resolution ---

  def test_file_entry_param_type
    spec = {
      request: {
        method: "POST",
        path: { template: "v1/upload", params: [] },
        query: [], json: nil, form: nil,
        files: [
          { name: "file", value: { type: "param", name: "file" } }
        ],
        headers: {}, streaming: false, force_multipart: false
      }
    }

    upload = ElevenLabs::Upload.from_bytes("data", filename: "test.bin")
    @executor.call(spec, { file: upload })
    files = @http.calls.last[:files]
    assert_equal 1, files.length
    assert_equal "file", files.first[:name]
    assert_equal upload, files.first[:value]
  end

  def test_file_entry_nil_param_skipped
    spec = {
      request: {
        method: "POST",
        path: { template: "v1/upload", params: [] },
        query: [], json: nil, form: nil,
        files: [
          { name: "file", value: { type: "param", name: "file" } }
        ],
        headers: {}, streaming: false, force_multipart: false
      }
    }

    @executor.call(spec, { file: nil })
    assert_empty @http.calls.last[:files]
  end

  def test_file_entry_literal_type
    spec = {
      request: {
        method: "POST",
        path: { template: "v1/upload", params: [] },
        query: [], json: nil, form: nil,
        files: [
          { name: "metadata", value: { type: "literal", value: "fixed-content" } }
        ],
        headers: {}, streaming: false, force_multipart: false
      }
    }

    @executor.call(spec, {})
    files = @http.calls.last[:files]
    assert_equal 1, files.length
    assert_equal "metadata", files.first[:name]
    assert_equal "fixed-content", files.first[:value]
  end

  def test_file_entry_tuple_type
    spec = {
      request: {
        method: "POST",
        path: { template: "v1/upload", params: [] },
        query: [], json: nil, form: nil,
        files: [
          {
            name: "file",
            value: {
              type: "tuple",
              filename: "doc.pdf",
              content: { type: "param", name: "file" },
              content_type: "application/pdf"
            }
          }
        ],
        headers: {}, streaming: false, force_multipart: false
      }
    }

    @executor.call(spec, { file: "raw-bytes" })
    files = @http.calls.last[:files]
    assert_equal 1, files.length
    entry = files.first
    assert_equal "file", entry[:name]
    assert_equal "raw-bytes", entry[:value]
    assert_equal "doc.pdf", entry[:filename]
    assert_equal "application/pdf", entry[:content_type]
  end

  def test_file_entry_list_type
    spec = {
      request: {
        method: "POST",
        path: { template: "v1/upload", params: [] },
        query: [], json: nil, form: nil,
        files: [
          {
            name: "files",
            value: {
              type: "list",
              items: [
                { type: "param", name: "file_a" },
                { type: "param", name: "file_b" }
              ]
            }
          }
        ],
        headers: {}, streaming: false, force_multipart: false
      }
    }

    @executor.call(spec, { file_a: "data-a", file_b: "data-b" })
    files = @http.calls.last[:files]
    assert_equal 1, files.length
    assert_equal ["data-a", "data-b"], files.first[:value]
  end

  def test_file_entry_list_skips_nil_items
    spec = {
      request: {
        method: "POST",
        path: { template: "v1/upload", params: [] },
        query: [], json: nil, form: nil,
        files: [
          {
            name: "files",
            value: {
              type: "list",
              items: [
                { type: "param", name: "file_a" },
                { type: "param", name: "file_b" }
              ]
            }
          }
        ],
        headers: {}, streaming: false, force_multipart: false
      }
    }

    @executor.call(spec, { file_a: "data-a", file_b: nil })
    files = @http.calls.last[:files]
    assert_equal 1, files.length
    assert_equal ["data-a"], files.first[:value]
  end

  # --- Streaming dispatch ---

  def test_streaming_operation_calls_stream
    spec = {
      request: {
        method: "POST",
        path: { template: "v1/stream", params: [] },
        query: [],
        json: { literal: nil, assignments: [{ path: ["text"], param: "text" }] },
        form: nil, files: [],
        headers: {}, streaming: true, force_multipart: false
      }
    }

    @executor.call(spec, { text: "hello" })
    assert_equal :stream, @http.calls.last[:kind]
    assert_equal({ "text" => "hello" }, @http.calls.last[:json])
  end

  def test_non_streaming_operation_calls_request
    spec = {
      request: {
        method: "GET",
        path: { template: "v1/items", params: [] },
        query: [], json: nil, form: nil, files: [],
        headers: {}, streaming: false, force_multipart: false
      }
    }

    @executor.call(spec, {})
    assert_equal :request, @http.calls.last[:kind]
  end

  # --- Headers ---

  def test_headers_stringified
    spec = {
      request: {
        method: "GET",
        path: { template: "v1/items", params: [] },
        query: [], json: nil, form: nil, files: [],
        headers: { content_encoding: "gzip" },
        streaming: false, force_multipart: false
      }
    }

    @executor.call(spec, {})
    assert_equal({ "content_encoding" => "gzip" }, @http.calls.last[:headers])
  end

  # --- Request options forwarded ---

  def test_request_options_forwarded_to_http
    spec = {
      request: {
        method: "GET",
        path: { template: "v1/items", params: [] },
        query: [], json: nil, form: nil, files: [],
        headers: {}, streaming: false, force_multipart: false
      }
    }

    @executor.call(spec, { request_options: { timeout_in_seconds: 5 } })
    assert_equal({ timeout_in_seconds: 5 }, @http.calls.last[:request_options])
  end

  # --- Force multipart forwarded ---

  def test_force_multipart_forwarded
    spec = {
      request: {
        method: "POST",
        path: { template: "v1/items", params: [] },
        query: [], json: nil,
        form: { literal: nil, assignments: [{ path: ["field"], param: "field" }] },
        files: [],
        headers: {}, streaming: false, force_multipart: true
      }
    }

    @executor.call(spec, { field: "val" })
    assert_equal true, @http.calls.last[:force_multipart]
  end
end
