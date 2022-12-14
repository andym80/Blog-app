# -*- encoding: utf-8 -*-
# stub: rails-helper 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rails-helper".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Chen Yi-Cyuan".freeze]
  s.date = "2015-05-25"
  s.description = "Provides more helper methods for rails. Generate css class names...".freeze
  s.email = ["emn178@gmail.com".freeze]
  s.homepage = "https://github.com/emn178/rails-helper".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.25".freeze
  s.summary = "Provides more helper methods for rails.".freeze

  s.installed_by_version = "3.3.25" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.2"])
  else
    s.add_dependency(%q<rspec>.freeze, ["~> 3.2"])
  end
end
