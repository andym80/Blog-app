# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails-helper/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-helper"
  spec.version       = RailsHelper::VERSION
  spec.authors       = ["Chen Yi-Cyuan"]
  spec.email         = ["emn178@gmail.com"]
  spec.description   = %q{Provides more helper methods for rails. Generate css class names...}
  spec.summary       = %q{Provides more helper methods for rails.}
  spec.homepage      = "https://github.com/emn178/rails-helper"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "~> 3.2"
end
