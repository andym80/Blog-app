module CleanUp
  class OptionValues
    SUPPORTED_OPTIONS = %w(dir extension pattern files_amount size).freeze
    SUPPORTED_BLOCK_OPTIONS = %w(contains).freeze

    attr_reader :options

    def self.parse(&block)
      new(&block).options
    end

    def initialize(&block)
      @options = {}
      instance_eval(&block)
    end

    def respond_to_missing?(method, *)
      SUPPORTED_OPTIONS.include?(method.to_s) || super
    end

    def method_missing(method, *args, &block)
      if SUPPORTED_BLOCK_OPTIONS.include?(method.to_s)
        @options[method.to_s] = block
      elsif SUPPORTED_OPTIONS.include?(method.to_s)
        @options[method.to_s] = args
      end
    end
  end
end
