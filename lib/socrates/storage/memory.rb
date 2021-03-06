require "socrates/storage/storage"

module Socrates
  module Storage
    class Memory
      include Socrates::Storage::Storage

      def initialize
        @memory = {}
      end

      def has_key?(key)
        @memory.has_key?(key)
      end

      def clear(key)
        @memory.delete(key)
      end

      def get(key)
        @memory[key]
      end

      def put(key, value)
        @memory[key] = value
      end

      def clear_all
        @memory.clear
      end
    end
  end
end
