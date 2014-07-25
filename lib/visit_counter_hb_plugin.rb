require 'visit_counter_hb_plugin/engine'

require 'visit_counter_hb_plugin/count'
require 'visit_counter_hb_plugin/visit_counter_drop'

module VisitCounterHbPlugin
  class VisitCounterHbPlugin

    include Locomotive::Plugin

    before_page_render :increment_page_count

    def self.default_plugin_id
      'visit_counter'
    end

    def increment_page_count
      counter_for_current_page.increment!
    end

    def to_liquid
      @drop ||= VisitCounterHbPluginDrop.new(self)
    end

    def self.rack_app
      Engine
    end

    def config_template_file
      File.join(File.dirname(__FILE__), 'visit_counter_hb_plugin', 'config.haml')
    end

    def page_count
      counter_for_current_page.count
    end

    def site_count
      Count.sum(:count).to_i
    end

    def show_count_link
      Engine.routes.url_helpers.show_count_path
    end

    protected

    def counter_for_current_page
      path = @controller.params[:path] || 'index'
      Count.where(:page_fullpath => path).first \
        || Count.new(:page_fullpath => path)
    end

  end

end
