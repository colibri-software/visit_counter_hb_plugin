
module VisitCounter
  class Count < Locomotive::Plugin::DBModel
    field :count, type: Integer, default: 0

    def increment!
      self.count += 1
    end
  end
end
