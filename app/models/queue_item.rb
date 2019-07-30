class QueueItem
attr_accessor :title, :viewer, :rating

    @@all = []

    def initialize(title, viewer, rating=nil)
        @title = title
        @viewer = viewer
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end


end
