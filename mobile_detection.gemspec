# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'mobile_detection/version'

Gem::Specification.new do |s|
  s.name = "mobile_detection"
  s.version = MobileDetection::VERSION
  s.platform    = Gem::Platform::RUBY

  s.authors     = ["Colibri Software"]
  s.email       = "info@colibri-software.com"
  s.homepage    = "http://www.colibri-software.com"
  s.summary     = "Locomotive plugin for detecting mobile device"
  s.description = "This plugin provides several detections for determining the device of the user"

  s.add_dependency 'locomotive_plugins',    '~> 0.1'
  s.add_dependency 'mobile-fu'

  s.required_rubygems_version = ">= 1.3.6"

  s.files           = Dir['Gemfile', '{lib}/**/*']
  s.require_paths   = ["lib"]
end
