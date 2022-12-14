module CleanUp
  module Conditions
    # TODO: size conditions format
    class Size
      def initialize(*value)
        @pattern = parse(value.first)
      end

      def match?(file)
        @pattern.cover?(File.size(file))
      end

      protected

      def parse(value)
        Range.new(value[:min] || 0, value[:max] || Float::INFINITY)
      end
    end
  end
end
