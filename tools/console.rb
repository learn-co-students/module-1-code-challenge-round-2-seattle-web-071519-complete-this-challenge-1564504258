require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

stan = Viewer.new("stan")
ellyn = Viewer.new("ellyn")
asif = Viewer.new("asif")
grace = Viewer.new("grace")

terminator = Movie.new("Judgement Day")
godfather = Movie.new("Godfather")
shawshank = Movie.new("Redemption")
princess = Movie.new("Mononoke")

q1 = QueueItem.new(stan, terminator)
q2 = QueueItem.new(ellyn, godfather )
q3 = QueueItem.new(asif, shawshank )
q4 = QueueItem.new(godfather, princess )


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
