require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end




viewer1 = Viewer.new("username1")
viewer2 = Viewer.new("username2")
viewer3 = Viewer.new("username3")
viewer4 = Viewer.new("username4")
viewer5 = Viewer.new("username5")
viewer6 = Viewer.new("username6")


movie1= Movie.new("movie1")
movie2= Movie.new("movie2")
movie3= Movie.new("movie3")
movie4= Movie.new("movie4")
movie5= Movie.new("movie5")
movie6= Movie.new("movie6")

q1=QueueItem.new(movie1,  viewer1, 1)
q2=QueueItem.new(movie2,  viewer2, 2)
q3=QueueItem.new(movie3,  viewer3, 3)
q4=QueueItem.new(movie4,  viewer4, 4)
q5=QueueItem.new(movie5,  viewer5, 5)
q6=QueueItem.new(movie6,  viewer6)


#ask question- on add movie to queue, what if they want to rate?
 #check viewer.rate_movie










binding.pry
0 #leave this here to ensure binding.pry isn't the last line
