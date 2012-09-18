
require 'rubygems'
require 'bundler/setup'

require 'visit_counter/visit_counter_drop'

module VisitCounter
  class VisitCounter
    include Locomotive::Plugin
  end

  LocomotivePlugins.register_plugin(VisitCounter)

end
