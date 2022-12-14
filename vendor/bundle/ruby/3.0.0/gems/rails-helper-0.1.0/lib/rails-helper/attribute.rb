module RailsHelper
  module Attribute
    def classes(*args)
      classes = []
      args.each do |arg|
        if arg.is_a?(Hash)
          classes << arg.select { |key, value| value }.keys
        else
          classes << arg unless arg.nil?
        end
      end
      classes.join(" ")
    end
  end
end
