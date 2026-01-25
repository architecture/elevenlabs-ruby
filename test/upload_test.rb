require "test_helper"
require "stringio"
require "tempfile"

class UploadTest < Minitest::Test
  def test_from_path_sets_attributes
    tempfile = Tempfile.new("test")
    tempfile.write("content")
    tempfile.flush

    upload = ElevenLabs::Upload.from_path(tempfile.path)

    assert_equal tempfile.path, upload.source
    assert_equal File.basename(tempfile.path), upload.filename
    assert_equal "application/octet-stream", upload.content_type
    assert upload.auto_close?
    assert upload.path?
  ensure
    tempfile.close!
  end

  def test_from_path_with_custom_filename
    tempfile = Tempfile.new("test")
    tempfile.write("content")
    tempfile.flush

    upload = ElevenLabs::Upload.from_path(tempfile.path, filename: "custom.txt")

    assert_equal "custom.txt", upload.filename
  ensure
    tempfile.close!
  end

  def test_from_path_with_custom_content_type
    tempfile = Tempfile.new("test")
    tempfile.write("content")
    tempfile.flush

    upload = ElevenLabs::Upload.from_path(tempfile.path, content_type: "text/plain")

    assert_equal "text/plain", upload.content_type
  ensure
    tempfile.close!
  end

  def test_from_io_sets_attributes
    io = StringIO.new("test data")
    upload = ElevenLabs::Upload.from_io(io, filename: "test.txt")

    assert_equal io, upload.source
    assert_equal "test.txt", upload.filename
    assert_equal "application/octet-stream", upload.content_type
    refute upload.auto_close?
    refute upload.path?
  end

  def test_from_io_with_auto_close
    io = StringIO.new("test data")
    upload = ElevenLabs::Upload.from_io(io, auto_close: true)

    assert upload.auto_close?
  end

  def test_from_bytes_creates_stringio
    upload = ElevenLabs::Upload.from_bytes("binary data", filename: "data.bin")

    assert_kind_of StringIO, upload.source
    assert_equal "binary data", upload.source.string
    assert_equal "data.bin", upload.filename
    assert_equal "application/octet-stream", upload.content_type
    assert upload.auto_close?
  end

  def test_from_bytes_with_custom_content_type
    upload = ElevenLabs::Upload.from_bytes("binary", content_type: "image/png")

    assert_equal "image/png", upload.content_type
  end

  def test_from_string_creates_stringio_with_text_plain
    upload = ElevenLabs::Upload.from_string("hello world", filename: "message.txt")

    assert_kind_of StringIO, upload.source
    assert_equal "hello world", upload.source.string
    assert_equal "message.txt", upload.filename
    assert_equal "text/plain", upload.content_type
    assert upload.auto_close?
  end

  def test_from_string_with_custom_content_type
    upload = ElevenLabs::Upload.from_string("data", content_type: "application/json")

    assert_equal "application/json", upload.content_type
  end

  def test_open_file_uses_file_opener
    tempfile = Tempfile.new("test")
    tempfile.write("content")
    tempfile.flush

    opened_files = []
    original_opener = ElevenLabs::Upload.file_opener
    ElevenLabs::Upload.file_opener = lambda do |path|
      file = File.open(path, "rb")
      opened_files << file
      file
    end

    file = ElevenLabs::Upload.open_file(tempfile.path)

    assert_equal 1, opened_files.length
    assert_equal file, opened_files.first
    file.close
  ensure
    ElevenLabs::Upload.file_opener = original_opener
    tempfile.close!
  end

  def test_path_predicate_returns_false_for_io
    io = StringIO.new("data")
    upload = ElevenLabs::Upload.from_io(io)

    refute upload.path?
  end

  def test_path_predicate_returns_false_for_nonexistent_path
    upload = ElevenLabs::Upload.new("/nonexistent/path.txt")

    refute upload.path?
  end
end
