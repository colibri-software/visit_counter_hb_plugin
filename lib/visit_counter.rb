
require 'rubygems'
require 'bundler/setup'

require 'visit_counter/visit_counter_drop'

module VisitCounter
  class VisitCounter

    include Locomotive::Plugin

    embeds_one :count_model, :class_name => 'VisitCounter::Count'

    before_filter :increment_count

    def increment_count
      find_or_build_count_model.count += 1
    end

    def to_liquid
      @drop ||= VisitCounterDrop.new(self)
    end

    def count
      find_or_build_count_model.count
    end

    protected

    def find_or_build_count_model
      count_model ||= count_model.build
    end

  end

  LocomotivePlugins.register_plugin(VisitCounter)

end
