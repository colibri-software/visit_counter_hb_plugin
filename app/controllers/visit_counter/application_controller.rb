module VisitCounter
  class ApplicationController < ActionController::Base

    before_filter :set_layout_variables

    def set_layout_variables
      @stylesheet = Engine.plugin_object.config['stylesheet']
    end
  end
end
