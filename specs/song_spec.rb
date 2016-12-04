require('minitest/autorun')
require ('minitest/rg')
require_relative ('../song')

class SongSpec < MiniTest::Test

  def test_song_has_description
    song = Song.new({"The Velvet Underground" => "All Tomorrow's Parties"})
    assert_equal({"The Velvet Underground" => "All Tomorrow's Parties"}, song.song)
  end

  def test_song_has_title
    song = Song.new({"The Velvet Underground" => "All Tomorrow's Parties"})
    assert_equal("All Tomorrow's Parties", song.get_title)
  end

  def test_song_has_artist
    song = Song.new("The Velvet Underground" =>"All Tomorrow's Parties")
    assert_equal("The Velvet Underground",song.get_artist)
  end

end