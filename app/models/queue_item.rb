class QueueItem

    attr_accessor :movie, :viewer, :rating
    @@all = []

    def intialize(movie, viewer, rating=nil)
        @movie = movie
        @viewer = viewer
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end
end
