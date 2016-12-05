require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../songs')
require_relative('../rooms')

class SongSpec < MiniTest::Test

  def test_can_create_song
    song = Songs.new()
    assert_equal(Songs, song.class())
  end


end