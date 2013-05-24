
module VisitCounterHbPlugin
  class VisitCounterHbPluginDrop < ::Liquid::Drop

    delegate :page_count, :site_count, :show_count_link, to: :source

    def initialize(source)
      @source = source
    end

    protected

    attr_reader :source

  end
end
