
module VisitCounter
  class VisitCounterDrop < ::Liquid::Drop

    delegate :page_count, :site_count, to: :source

    def initialize(source)
      @source = source
    end

    protected

    attr_reader :source

  end
end
