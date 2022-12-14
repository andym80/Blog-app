module CleanUp
  module Conditions
    class Contains
      def initialize(&block)
        @file_conditions = []
        instance_eval(&block)
      end

      def at_least(number, &block)
        number.times { instance_eval(&block) }
      end

      def file(&block)
        @file_conditions << Conditions.build_for_file(OptionValues.parse(&block))
      end

      def match?(folder)
        files = CleanUp.dir_entries(folder).reject { |entry| File.directory?(entry) }

        match_file_conditions?(files)
      end

      private

      def match_file_conditions?(files)
        @file_conditions.all? do |conditions|
          file = files.detect do |f|
            conditions.all? { |c| c.match?(f) }
          end
          file && files.delete(file)
        end
      end
    end
  end
end
