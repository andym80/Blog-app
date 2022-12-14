module CleanUp
  module Rules
    class CopyFile < Base
      def build_conditions(options)
        Conditions.build_for_file(options)
      end

      def call(entry, target)
        if match_conditions?(entry)
          FileUtils.cp(entry, full_target_folder(target), verbose: true)
        end
      end
    end
  end
end
