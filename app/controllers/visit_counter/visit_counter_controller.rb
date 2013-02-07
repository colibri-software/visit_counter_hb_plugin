require_dependency "visit_counter/application_controller"

module VisitCounter
  class VisitCounterController < ApplicationController
    def show
      @plugin_object = Engine.plugin_object
      @count = @plugin_object.site_count
    end

    def reset
      Count.destroy_all
      redirect_to action: 'show'
    end
  end
end
