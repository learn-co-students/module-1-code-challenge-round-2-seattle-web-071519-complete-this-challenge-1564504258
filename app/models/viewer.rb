class Viewer
  attr_accessor :username, :queueitem, :movie 

  @@all = []

  def initialize(username)
    @username = username
    # @queueitem = queueitem
    # @movie = movie
    self.class.all << self
  end

  def self.all
    @@all
  end
#this method should return an 
#array of `QueueItem` instances 
#associated with this instance of `Viewer`
  def queue_items
    QueueItem.all.select do |q|
      q.viewer == self
    end
  end
#this method should return an array of 
#`Movie` instances in the `Viewer`'s queue.
  def queue_movies
    Movie.all.collect do |m|
         m.name == self
    end
  end
#this method should receive a `Movie` instance as its only argument 
#and add it to the `Viewer`'s queue
  def add_movie_to_queue(movie)
    QueueItem.new(movie, self)
    # Viewer.all << movie
  end

  def rate_movie(movie, rating)
    QueueItem.new(movie, self, rating)
  end

end
