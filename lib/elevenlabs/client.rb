require_relative "environment"
require_relative "resources"

module ElevenLabs
  class Client
    attr_reader :http_client

    def initialize(
      api_key: nil,
      base_url: nil,
      environment: :production,
      headers: {},
      timeout: nil,
      adapter: Faraday.default_adapter,
      http_client: nil,
      executor: nil
    )
      if http_client
        @http_client = http_client
      else
        resolved_url = ElevenLabs::Environment.resolve(base_url: base_url, environment: environment)
        @http_client = ElevenLabs::HTTPClient.new(
          base_url: resolved_url,
          api_key: api_key,
          headers: headers,
          timeout: timeout,
          adapter: adapter
        )
      end
      @executor = executor || ElevenLabs::OperationExecutor.new(@http_client)
      @resource_cache = {}
    end

    class << self
      def build_interface
        Resources.build_resources

        Resources.root_operations.each_with_index do |operation, idx|
          const_name = "ROOT_OPERATION_#{operation[:name].upcase}_#{idx}"
          const_set(const_name, operation)
          define_method_with_operation(operation[:name], operation, const_name)
        end

        Resources.top_level_resources.each_key do |resource_name|
          method_name = resource_name.tr("-", "_")
          resource_class = Resources.class_for([resource_name])
          define_resource_accessor(method_name, resource_class)
        end
      end

      private

      def define_resource_accessor(name, klass)
        define_method(name) do
          @resource_cache[name.to_sym] ||= klass.new(@http_client, @executor)
        end
      end

      def define_method_with_operation(name, operation, const_name)
        positional = operation[:positional_params] || []
        keyword = operation[:keyword_params] || []

        positional_code =
          positional.map do |param|
            default = literal_for(param[:default])
            default ? "#{param[:name]} = #{default}" : param[:name]
          end

        keyword_code =
          keyword.map do |param|
            default =
              if param[:default] == "__OMIT__"
                "ElevenLabs::Utils::OMIT"
              else
                literal_for(param[:default]) || "nil"
              end
            "#{param[:name]}: #{default}"
          end

        params_assignment =
          (positional + keyword).map do |param|
            "#{param[:name]}: #{param[:name]}"
          end

        signature_parts = positional_code + keyword_code
        header =
          if signature_parts.empty?
            "def #{name}"
          else
            "def #{name}(#{signature_parts.join(', ')})"
          end

        body = <<~RUBY
          #{header}
            params = {
              #{params_assignment.join(",\n              ")}
            }
            @executor.call(self.class::#{const_name}, params)
          end
        RUBY
        class_eval(body, __FILE__, __LINE__)
      end

      def literal_for(default)
        return nil if default.nil? || default == "__OMIT__"
        case default
        when true, false, Numeric
          default.to_s
        when String
          default.dump
        else
          nil
        end
      end
    end

    build_interface
  end
end
