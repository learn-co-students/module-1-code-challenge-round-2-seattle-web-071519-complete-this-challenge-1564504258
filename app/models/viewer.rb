class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end
  
  def queue_items
    QueueItem.all.select do |items|
      items.viewer == self
    end
  end

  def queue_movies
    queue_items.collect do |items|
      items.movie
    end
  end

  def add_movie_to_queue(movie)
    QueueItem.new(movie, self)
  end


 
  def rate_movie(movie, rating)
    movie_to_rate=queue_items.select do |items|
      items.movie ==  movie
    end
    
    if movie_to_rate.length <1
      QueueItem.new(movie, self, rating)
    else
      movie_to_rate.rating =rating
    end
  end

end
