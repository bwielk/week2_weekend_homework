class Song

attr_reader :song

def initialize(song)
  @song = song
end

def get_title
  @song.each {|x,y| return y}
end

def get_artist
  @song.each {|x,y| return x}
end
end