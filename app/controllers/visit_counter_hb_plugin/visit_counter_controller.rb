require_dependency "visit_counter_hb_plugin/application_controller"

module VisitCounterHBPlugin
  class VisitCounterHBPluginController < ApplicationController
    def show
      @plugin_object = Engine.plugin_object
      @count = @plugin_object.site_count
      @all_counts = {}
      Count.all.to_ary.each do |count|
        @all_counts[count.page_fullpath] = count.count
      end
    end

    def reset
      Count.destroy_all
      redirect_to action: 'show'
    end
  end
end
