require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("007")
m2 = Movie.new("LOTR")
m3 = Movie.new("Toy Story")
m4 = Movie.new("Mean Girls")

v1 = Viewer.new("Elle")
v2 = Viewer.new("Cam")
v3 = Viewer.new("Tyler")
v4 = Viewer.new("Mia")

# q1 = QueueItem.new(m1, v1, 4)
# q2 = QueueItem.new(m2, v2, 5)
# q3 = QueueItem.new(m3, v3, 4)
# q4 = QueueItem.new(m4, v4, 4)


puts m1
binding.pry
 #leave this here to ensure binding.pry isn't the last line
0