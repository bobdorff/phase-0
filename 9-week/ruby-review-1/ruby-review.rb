# Create a Playlist from Driver Code

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# Pseudocode
# 1. Create a class called 'Song' that takes a song name and a band name as arguments. 
# 2. Create a playlist class that can take any number of arguments, each of which will be an object initialized as a Song.



# Initial Solution
  

# class Song
#   attr_reader :song, :band
#   def initialize(song, band)
#     @song = song
#     @band = band 
#   end
  
#   def play
#     puts "Playing: #{@song} by #{@band}"
#     for num in 1..3
#       sleep 1
#       puts "."
#     end
#   end
# end

# class Playlist
#   attr_reader :playlist
#   def initialize(*songs)
#     @playlist = songs
    
#   end
  
#   def add(*songs)
#     @playlist << songs
#     @playlist.flatten!
#   end
  

#   def num_of_tracks
#     return playlist.length
#   end
  
#   def remove(song)
#     playlist.delete(song)
#   end
  
#   def includes?(song)
#     playlist.include?(song)
#   end
  
#   def play_all
#     playlist.each do |song|
#       song.play
#     end
#   end
#   def display
#     playlist.each do |song|
#       puts "#{song.song} by #{song.band}"
#     end
#   end
# end

  
  
# Refactored Solution
class Song
  attr_reader :song, :band
  def initialize(song, band)
    @song = song
    @band = band 
  end
  
  def play
    puts "Playing: #{@song} by #{@band}"
    for num in 1..3
      sleep 1
      puts "."
    end
  end
end

class Playlist
  def initialize(*songs)
    @playlist = songs
  end
  
  def add(*songs)
    @playlist.push(songs).flatten!
  end

  def num_of_tracks
    return @playlist.length
  end
  
  def remove(song)
    @playlist.delete(song)
  end
  
  def includes?(song)
    @playlist.include?(song)
  end
  
  def play_all
    @playlist.each {|song| song.play}
  end
  
  def display
    @playlist.each { |song| puts "#{song.song} by #{song.band}"}
  end
end


# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.

my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
# my_playlist.play_all
my_playlist.display





# Reflection

# What concepts did you review in this challenge?
#   We reviewed creating different functions and classes and passed information between these new constructions. 
# What is still confusing to you about Ruby?
#   It took some time to get back into the syntax of Ruby after spending so much time in JavaScript, but we were able to 
#   figure it out with a bit of review. Neither of us felt like we had a great handle on the usage of accessors prior to 
#   this challenge, and working on this helped us nail down exactly how those work and why you'd use them. 
# What are you going to study to get more prepared for Phase 1?
#   It's all about reading the well-grounded rubyist and eloquent javascript during the next week. That and working through 
#   the remaining challenges I haven't tackled. 