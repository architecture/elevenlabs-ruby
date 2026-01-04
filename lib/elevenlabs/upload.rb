require "stringio"

module ElevenLabs
  # Convenience helper that wraps upload sources with filenames and content types.
  class Upload
    class << self
      attr_accessor :file_opener
    end
    self.file_opener = ->(path) { File.open(path, "rb") }

    attr_reader :source, :filename, :content_type

    def self.from_path(path, filename: nil, content_type: "application/octet-stream", auto_close: true)
      new(path, filename: filename || File.basename(path), content_type: content_type, auto_close: auto_close)
    end

    def self.from_io(io, filename: nil, content_type: "application/octet-stream", auto_close: false)
      new(io, filename: filename, content_type: content_type, auto_close: auto_close)
    end

    def self.from_bytes(bytes, filename: nil, content_type: "application/octet-stream", auto_close: true)
      new(StringIO.new(bytes), filename: filename, content_type: content_type, auto_close: auto_close)
    end

    def self.from_string(string, filename: nil, content_type: "text/plain", auto_close: true)
      new(StringIO.new(string), filename: filename, content_type: content_type, auto_close: auto_close)
    end

    def self.open_file(path)
      file_opener.call(path)
    end

    def initialize(source, filename: nil, content_type: "application/octet-stream", auto_close: false)
      @source = source
      @filename = filename
      @content_type = content_type
      @auto_close = auto_close
    end

    def path?
      source.is_a?(String) && File.exist?(source)
    end

    def auto_close?
      @auto_close
    end
  end
end
