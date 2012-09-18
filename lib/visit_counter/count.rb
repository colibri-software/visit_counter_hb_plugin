
module VisitCounter
  class Count
    include Locomotive::Plugin::DBModel

    field :count, :type => Integer, :default => 0

  end
end
