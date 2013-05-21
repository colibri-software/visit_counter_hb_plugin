# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

require 'visit_counter_hb_plugin/version'

Gem::Specification.new do |s|
  s.name        = "visit_counter_hb_plugin"
  s.version     = VisitCounterHBPlugin::VERSION
  s.platform    = Gem::Platform::RUBY

  s.authors     = ["Colibri Software"]
  s.email       = "info@colibri-software.com"
  s.homepage    = "http://www.colibri-software.com"
  s.summary     = "Locomotive plugin for counting the number of visits to the site"
  s.description = "This plugin stores the number of visits to the site. This can be viewed by the site owner, or displayed on a public page."

  s.add_dependency 'rails',                     '~> 3.2.11'
  s.add_dependency 'locomotive_plugins',        '~> 1.0.0.beta'

  s.add_development_dependency 'rspec-rails',   '~> 2.0'

  s.required_rubygems_version = ">= 1.3.6"
  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.require_paths   = ["lib"]

end
