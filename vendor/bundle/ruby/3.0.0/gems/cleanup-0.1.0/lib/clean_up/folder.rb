module CleanUp
  class Folder
    attr_reader :options, :strategy, :files_rules, :directory_rules

    def self.collect(strategy, &block)
      new(strategy, &block)
    end

    def initialize(strategy, &block)
      @strategy, @files_rules, @directory_rules = strategy, [], []
      instance_eval(&block)
    end

    # Implement setter & getter for source folder.
    def source(folder = nil)
      @source ||= File.expand_path(folder)
    end

    # Implement setter & getter for target folder.
    def target(folder = nil)
      @target ||= File.expand_path(folder)
    end

    def file(&block)
      with_options(block) do
        @files_rules << file_rule_class.new(options)
      end
    end

    def directory(&block)
      with_options(block) do
        @directory_rules << directory_rule_class.new(options)
      end
    end

    def process_directory(directory)
      directory_rules.detect do |rule|
        rule.call(directory, target)
      end
    end

    def process_file(file)
      files_rules.detect do |rule|
        rule.call(file, target)
      end
    end

    private

    def file_rule_class
      strategy == :move ? Rules::MoveFile : Rules::CopyFile
    end

    def directory_rule_class
      strategy == :move ? Rules::MoveDirectory : Rules::CopyDirectory
    end

    def with_options(options_block)
      @options = OptionValues.parse(&options_block)

      yield if block_given?
    ensure
      @options = nil
    end
  end
end
