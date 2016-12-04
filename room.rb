require('pry')

class Room

attr_reader :name 

def initialize(name)
  @name = name
  @guests = []
  @songs = []
  @waiting_list = []
end

def add_song
  puts "What's the name of an artist?"
  artist = gets.chomp
  puts "What's the title of a song?"
  title = gets.chomp
  @songs.push({"#{artist}" => "#{title}"})
end


def delete_a_song
  puts "What's the name of an artist?"
  artist = gets.chomp
  puts "What's the title of a song?"
  title = gets.chomp
  song = {"#{artist}" => "#{title}"}
  for s in @songs
    if s == song
      @songs.delete(song)
    else
      return "The song doesn't exist in your playlist"
    end
  end
end

def display_songs
  return @songs
end

def num_of_songs
  display_songs
  return @songs.count
end

def num_guests?
  return @guests.count
end

def assign_a_guest(guest)
  if @guests.count <= 2
  @guests << guest 
  else 
    if @guests.count > 2
    @waiting_list << guest
    return "Not enough space, you've been moved to a waiting list!"
    end
  end
end

def check_out_guest(guest)
   @guests.delete(guest)
end

def cheer(player)# - IGNORE -###############################
  songs = []
  song = player.fav_song
  for n in @songs
    n.each{|x,y| songs << y}
  end
  puts "Yaaaaay!" if songs.include?(song)
end


binding.pry
end

