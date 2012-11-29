
require 'rubygems'
require 'bundler/setup'

require 'visit_counter/count'
require 'visit_counter/visit_counter_drop'

module VisitCounter
  class VisitCounter

    include Locomotive::Plugin

    has_many :counters, Count

    before_filter :increment_page_count

    def increment_page_count
      counter_for_current_page.increment!
    end

    def to_liquid
      @drop ||= VisitCounterDrop.new(self)
    end

    def page_count
      counter_for_current_page.count
    end

    def site_count
      counters.sum(:count)
    end

    protected

    def counter_for_current_page
      path = @controller.params[:path] || 'index'
      counters.where(:page_fullpath => path).first \
        || counters.build(:page_fullpath => path)
    end

  end

  LocomotivePlugins.register_plugin(VisitCounter)

end
