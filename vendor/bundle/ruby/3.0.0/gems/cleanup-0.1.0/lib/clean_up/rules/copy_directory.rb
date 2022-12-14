module CleanUp
  module Rules
    class CopyDirectory < Base
      def build_conditions(options)
        Conditions.build_for_directory(options)
      end

      def call(entry, target)
        if match_conditions?(entry)
          FileUtils.cp_r(entry, full_target_folder(target), verbose: true)
        end
      end
    end
  end
end
