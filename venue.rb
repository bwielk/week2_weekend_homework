require_relative('room')

class Venue

def initialize
  @rooms = []
end

def number_of_rooms
  @rooms.count
end

def add_room(room)
  if @rooms.count <= 3
    puts "Give the room a name" 
    name = gets.chomp
    @rooms.push(name)
  else
    if @rooms.count > 3
    return "Not enough space in the venue. Please wait! Have a drink!"
    end
  end
end

end