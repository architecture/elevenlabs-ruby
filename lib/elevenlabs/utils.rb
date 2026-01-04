require "cgi"
require "json"

module ElevenLabs
  module Utils
    OMIT = Object.new.freeze

    module_function

    def deep_dup(value)
      case value
      when Hash
        value.each_with_object({}) { |(k, v), acc| acc[k] = deep_dup(v) }
      when Array
        value.map { |v| deep_dup(v) }
      else
        value
      end
    end

    def assign_path(container, path, value)
      raise ArgumentError, "path cannot be empty" if path.empty?

      head, *tail = path
      target = container
      if target.nil?
        target = head.is_a?(Integer) ? [] : {}
      end

      if tail.empty?
        if head.is_a?(Integer)
          ensure_array_length(target, head + 1)
          target[head] = value
        else
          target[head] = value
        end
      else
        next_value =
          if head.is_a?(Integer)
            ensure_array_length(target, head + 1)
            target[head] ||= tail.first.is_a?(Integer) ? [] : {}
            target[head]
          else
            target[head] ||= tail.first.is_a?(Integer) ? [] : {}
          end
        assign_path(next_value, tail, value)
      end
      target
    end

    def ensure_array_length(array, length)
      while array.length < length
        array << nil
      end
      array
    end

    def deep_compact(value)
      case value
      when Hash
        result = value.each_with_object({}) do |(k, v), acc|
          next if v.equal?(OMIT)
          compacted = deep_compact(v)
          acc[k] = compacted unless compacted.nil? || compacted.equal?(OMIT)
        end
        result.empty? ? nil : result
      when Array
        result = value.map { |v| deep_compact(v) }.reject { |v| v.nil? || v.equal?(OMIT) }
        result unless result.empty?
      else
        value
      end
    end

    def symbolize_keys(hash)
      hash.each_with_object({}) do |(key, value), acc|
        acc[key.to_sym] = value
      end
    end

    def encode_path_segment(value)
      CGI.escape(value.to_s)
    end
  end
end
