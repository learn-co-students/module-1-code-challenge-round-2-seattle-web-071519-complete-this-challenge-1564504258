class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select do |items|
      items.movie == self
    end
  end

  def viewers
    queue_items.collect do |items|
      items.viewer
    end
  end

  def ratings
    queue_items.collect do |items|
      items.rating
    end
  end

  def average_rating
    ratings.sum/ratings.length
  end

  def all_ratings
    QueueItem.collect do |items|
      items.rating
    end
  end

  
  def self.highest_rated
    all_ratings.max_by do |ratings|
      ratings
    end
  end



end

