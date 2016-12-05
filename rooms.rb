class Room
  attr_reader :room_number, :current_guest, :songs_availiable

  def initialize (room_number)
    @room_number = room_number
    @current_guest = []
    @songs_availiable = []
  end

  
  def add_guest_to_room(guest)
    @current_guest.push(guest)
  end

  def remove_guest_from_room(guest)
    @current_guest.delete(guest)
  end

  def get_song_list_from_songs(song_list)
    @songs_availiable = song_list
  end

  def get_specific_song_from_list(song_list)
    puts "what song would you like to add to the room?"
    song_to_add = gets.chomp
    if song_list.include?(song_to_add)
      songs_availiable << song_to_add
    else 
    return "sorry we dont have that song"
    end


  end

end