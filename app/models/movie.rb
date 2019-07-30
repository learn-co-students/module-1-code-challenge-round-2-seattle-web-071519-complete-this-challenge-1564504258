class Movie
  attr_accessor :title, :rating

  @@all = []

  def initialize(title, rating)

    @title = title
    @rating = rating.to_f
    @@all << self
  end

  def que_items
    QueItem.all.select{|item| item.title == self}
  end

  def viewers
    que_items.map{|item| item.viewer}
  end

    
    def average_rating
    all_ratings =  que_items.map{|item|item.rating}
    all_ratings.to_f / all_ratings.count
    end

    
    def self.highest_rated
      
     
    end

    def self.all
    @@all
    end

end
