require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../rooms')
require_relative ('../guests')
require_relative ('../songs')

class RoomsSpec < MiniTest::Test

  def test_can_create_room
    room = Room.new(21)
    assert_equal(Room, room.class)
  end

  def test_can_get_room_number
    room = Room.new(21)
    assert_equal(21 , room.room_number())
  end

  def test_can_add_guest_to_room
    guest = Guest.new("steve")
    room = Room.new(21)
    
    room.add_guest_to_room(guest)

    current_guests = room.current_guest()    

    assert_equal("steve" , current_guests[0].guest_name)
  end

  def test_can_remove_guest_from_room
    guest = Guest.new("steve")
    room = Room.new(21)

    room.add_guest_to_room(guest)
    room.remove_guest_from_room(guest)

    assert_equal([] , room.current_guest)
  end

  def test_can_get_songs_availiable
    room = Room.new(21)
    songs_list = Songs.new()

    room.get_song_list_from_songs(songs_list.song_list())

    assert_equal(["invisible touch" , "call me al" , "club tropicana"] , room.songs_availiable())
  end

  def test_can_get_specific_songs_from_list
    room = Room.new(21)
    songs_list = Songs.new()

    room.get_specific_song_from_list(songs_list.song_list())

    assert_equal(["invisible touch" ], room.songs_availiable)
  end

  def test_dont_have_that_song
    room = Room.new(21)
    songs_list = Songs.new()

    message = room.get_specific_song_from_list(songs_list.song_list())

    assert_equal("sorry we dont have that song", message)
  end
end