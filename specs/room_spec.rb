require('minitest/autorun')
require ('minitest/rg')
require_relative ('../room')
require_relative ('../player')
require_relative('../song')

class RoomSpec < MiniTest::Test

def test_name
  room = Room.new("A")
  assert_equal("A", room.name)
end

def test_can_add_song
  room = Room.new("A")
  song = Song.new({"Spice Girls" => "Wannabe"})
  room.add_song
  song1 = Song.new({"Muse" => "Uprising"})
  room.add_song
  assert_equal(2, room.num_of_songs)
end

def test_can_delete_a_song
  room = Room.new("A")
  song = Song.new({"Spice Girls" => "Wannabe"})
  room.add_song
  song1 = Song.new({"Muse" => "Uprising"})
  room.add_song
  assert_equal(2, room.num_of_songs)
  room.delete_a_song
  assert_equal(1, room.num_of_songs)
end

def test_can_assign_a_guest_to_a_room
  guest1 = Player.new("Blaise", "At Last", 200)
  room = Room.new("A")
  room.assign_a_guest(guest1)
  assert_equal(1, room.num_guests?)
end

def test_too_many_people_in_a_room
  guest1 = Player.new("Ross", "We are the champions!",2)
  guest2 = Player.new("Eric", "Sand",3)
  guest3 = Player.new("Blaise", "Me Suive",304)
  room = Room.new("A")
  
  room.assign_a_guest(guest1)
  room.assign_a_guest(guest2)
  assert_equal(2, room.num_guests?)
  
  room.assign_a_guest(guest3)
  room.num_guests?
  assert_equal("Not enough space, you've been moved to a waiting list!", room.assign_a_guest(guest3))
end 


def test_can_check_out_a_guest
  guest = Player.new("Adam", "Eye of a Tiger", 342)
  guest1 = Player.new("Ron", "Crazy in Love", 234)
  room = Room.new("A")
  room.assign_a_guest(guest)
  room.assign_a_guest(guest1)
  assert_equal(2, room.num_guests?)
  room.check_out_guest(guest1)
  assert_equal(1, room.num_guests?)
end

def test_player_cheers_to_fav_song
  player = Player.new("Blaise", "Philadelphia", 133)
  room = Room.new("A")
  room.add_song
  song = player.fav_song
  assert_equal("Yaaaaay!", room.cheer(player))
end


end