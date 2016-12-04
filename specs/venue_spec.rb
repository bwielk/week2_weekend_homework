require('minitest/autorun')
require ('minitest/rg')
require_relative ('../venue')
require_relative ('../room')

class VenueSpec < MiniTest::Test


  def test_can_create_a_room
    room1 = Room.new
    room2 = Room.new
    room3 = Room.new
    venue = Venue.new

    venue.add_room(room1)
    venue.add_room(room2)
    venue.add_room(room3)

    assert_equal(3, venue.number_of_rooms)
  end

  def test_cannot_create_a_room
    room1 = Room.new
    room2 = Room.new
    room3 = Room.new
    room4 = Room.new
    venue = Venue.new

    venue.add_room(room1)
    venue.add_room(room2)
    venue.add_room(room3)
    assert_equal(3, venue.number_of_rooms)
    
    venue.add_room(room4)
    venue.number_of_rooms
    assert_equal("Not enough space in the venue. Please wait! Have a drink!", venue.add_room(room4))

  end

  def test_payment

  end

  
end