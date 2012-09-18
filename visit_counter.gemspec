# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'visit_counter/version'

Gem::Specification.new do |s|
  s.name        = "visit_counter"
  s.version     = VisitCounter::VERSION
  s.platform    = Gem::Platform::RUBY

  s.authors     = ["Colibri Software"]
  s.email       = "info@colibri-software.com"
  s.homepage    = "http://www.colibri-software.com"
  s.summary     = "Locomotive plugin for counting the number of visits to the site"
  s.description = "This plugin stores the number of visits to the site. This can be viewed by the site owner, or displayed on a public page."

  s.add_dependency 'locomotive_plugins',    '~> 0.2.0.alpha'

  s.required_rubygems_version = ">= 1.3.6"

  s.files           = Dir['Gemfile', '{lib}/**/*']
  s.require_paths   = ["lib"]
end
