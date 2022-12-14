module CleanUp
  module Conditions
    class Extension
      def initialize(*value)
        @pattern = *value
      end

      def match?(file)
        extension = File.extname(file)[1..-1]

        extension && @pattern.include?(extension)
      end
    end
  end
end
