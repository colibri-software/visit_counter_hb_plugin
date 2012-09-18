
module VisitCounter
  class VisitCounterDrop < ::Liquid::Drop

    def initialize(source)
      @source = source
    end

    def count
      @source.count
    end

  end
end
