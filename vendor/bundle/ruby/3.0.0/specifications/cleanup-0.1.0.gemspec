# -*- encoding: utf-8 -*-
# stub: cleanup 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "cleanup".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nickolai Smirnov".freeze]
  s.date = "2016-06-17"
  s.email = ["sm-nickolai@gmail.com".freeze]
  s.executables = ["cleanup".freeze, "console".freeze, "setup".freeze]
  s.files = ["bin/cleanup".freeze, "bin/console".freeze, "bin/setup".freeze]
  s.homepage = "https://github.com/nickolai-sm/clean_up".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.25".freeze
  s.summary = "Files and Directories clean up tool".freeze

  s.installed_by_version = "3.3.25" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.12"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<pry>.freeze, ["~> 0.10.3"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.12"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<pry>.freeze, ["~> 0.10.3"])
  end
end
