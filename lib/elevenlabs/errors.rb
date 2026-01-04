module ElevenLabs
  class Error < StandardError; end

  class HTTPError < Error
    attr_reader :status, :body, :headers

    def initialize(message, status:, body:, headers:)
      super(message)
      @status = status
      @body = body
      @headers = headers
    end
  end
end
