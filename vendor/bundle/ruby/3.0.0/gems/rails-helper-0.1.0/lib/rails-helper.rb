require "rails-helper/version"
require "rails-helper/attribute"

module RailsHelper
  if defined?(::Rails::Engine)
    class Engine < ::Rails::Engine
      initializer "rails-helper" do
        ActiveSupport.on_load(:action_view) do
          include RailsHelper::Attribute
        end
      end
    end
  end
end
