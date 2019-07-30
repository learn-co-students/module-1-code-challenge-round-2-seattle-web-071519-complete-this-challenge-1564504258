class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    #self.class.all << self
    @@all << self
  end


  def queue_items
    QueueItem.all.select{|item| item.viewer== self}
  end

  def add_movie_to_queue(title, viewer, rating=nil)
    QueueItem.new(title, self, rating)
  end

  def rate_movie(title, rating)
    if queue_items.include?(title)
      title.rating == rating      
    else
    add_movie_to_queue(title, self, rating)
    end
  end

  def self.all
    @@all
  end
  
end
