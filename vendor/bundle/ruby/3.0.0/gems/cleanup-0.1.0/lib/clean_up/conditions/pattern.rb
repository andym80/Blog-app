module CleanUp
  module Conditions
    class Pattern
      def initialize(*value)
        @pattern = value.map { |regexp| Regexp.new(regexp) }
      end

      def match?(file)
        @pattern.any? { |regexp| regexp.match(File.basename(file, '.*')) }
      end
    end
  end
end
