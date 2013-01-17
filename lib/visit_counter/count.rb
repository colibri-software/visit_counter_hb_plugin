
module VisitCounter
  class Count
    include Mongoid::Document

    field :page_fullpath
    field :count, type: Integer, default: 0

    validates_uniqueness_of :page_fullpath
    validates_presence_of :page_fullpath

    def increment!
      self.count += 1
      self.save!
    end
  end
end
