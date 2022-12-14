module CleanUp
  class FoldersRules
    attr_reader :rules_set

    def self.collect(&block)
      new(&block).rules_set
    end

    def initialize(&block)
      @rules_set = []
      instance_eval(&block)
    end

    def move(&block)
      @rules_set << CleanUp::Folder.collect(:move, &block)
    end

    def copy(&block)
      @rules_set << CleanUp::Folder.collect(:copy, &block)
    end
  end
end
