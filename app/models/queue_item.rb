class QueueItem

    @@all=[]
    def initialize(movie, viewer, rating=nil)
        @movie = movie
        @viewer = viewer
        @rating=rating
        @@all << self
    end


    def self.all
        @@all
    end

    def viewer
        @viewer
    end

    def movie
        @movie
    end

    def rating
        @rating
    end


end
