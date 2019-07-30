class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end
#returns an array of all the `QueueItem` 
#instances that contain this movie
  def queue_items
    QueueItem.all.select do |q|
      q.movie == self
    end
  end
#eturns an array of all of the `Viewer`s with this 
#`Movie` instance in their queue

  def viewers
    Viewer.all.select do |v|
      v.movie == self
    end
  end
#returns the average of all ratings 
#for this instance of `Movie`
  def average_rating
  # avg = total movies/movie
    total_ratings = QueueItem.all.select do |m|
      m.rating == self
    end
    total_movies = self.all.length
    avg = total_movies.to_f / total_ratings.to_f
    avg
  end

#returns the instance of `Movie` 
#with the highest average rating
  def self.highest_rated
    self.average_rating.max_by {|r|
      r.rating}
  end



end

