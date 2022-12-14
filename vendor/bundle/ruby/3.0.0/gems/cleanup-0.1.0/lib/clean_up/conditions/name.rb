module CleanUp
  module Conditions
    class Name
      def initialize(value)
        @pattern = Array(value)
      end

      def match?(file)
        @pattern.any? do |filename|
          filename == File.basename(file, '.*')
        end
      end
    end
  end
end
