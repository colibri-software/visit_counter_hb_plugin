
require 'rubygems'
require 'bundler/setup'

require 'visit_counter/visit_counter_drop'

module VisitCounter
  class VisitCounter

    include Locomotive::Plugin

    has_one :counter, VisitCounter::Count

    before_filter :increment_count

    def initialize_plugin
      build_counter unless counter
    end

    def increment_count
      counter.increment!
    end

    def to_liquid
      @drop ||= VisitCounterDrop.new(self)
    end

    def count
      counter.count
    end

  end

  LocomotivePlugins.register_plugin(VisitCounter)

end
