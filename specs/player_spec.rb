require('minitest/autorun')
require ('minitest/rg')
require_relative ('../player')
require_relative ('../room')

class PlayerSpec < MiniTest::Test

  def test_player_has_name
    player = Player.new("Blaise", "At Last", 200)
    assert_equal("Blaise", player.name)
  end

  def test_player_has_fav_song
    player = Player.new("Adam", "Fever", 100)
    assert_equal("Fever", player.fav_song)
  end

  def test_player_has_cash
    player = Player.new("A", "B", 212)
    assert_equal(212, player.cash)
  end
end