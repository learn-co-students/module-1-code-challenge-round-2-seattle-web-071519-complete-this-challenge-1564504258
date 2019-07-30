require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


user1 = Viewer.new("Asif")
user2 = Viewer.new("Samina")
user3 = Viewer.new("Amaar")


movie1 = Movie.new("Friends", 5)
movie2 = Movie.new("Lucifer", 4)
movie3 = Movie.new("Vinny", 3)
movie4 = Movie.new("Downtown", 2)


QueueItem.new(movie1, user1)
QueueItem.new(movie2, user2)
QueueItem.new(movie3, user3)
QueueItem.new(movie4, user1)







# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
