require 'visit_counter/engine'

require 'visit_counter/count'
require 'visit_counter/visit_counter_drop'

module VisitCounter
  class VisitCounter

    include Locomotive::Plugin

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
      Count.sum(:count).to_i
    end

    protected

    def counter_for_current_page
      path = @controller.params[:path] || 'index'
      Count.where(:page_fullpath => path).first \
        || Count.new(:page_fullpath => path)
    end

  end

end
