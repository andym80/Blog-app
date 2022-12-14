module CleanUp
  module Rules
    class Base
      attr_reader :options

      def initialize(options)
        @conditions = build_conditions(options)
        @options = options
      end

      def call(_entry, _source, _target)
        raise NotImplementedError
      end

      private

      def build_conditions(_options)
        raise NotImplementedError
      end

      def match_conditions?(entry)
        @conditions.all? { |c| c.match?(entry) }
      end

      def full_target_folder(target)
        File.join(File.expand_path(target), options['dir'])
      end
    end
  end
end
