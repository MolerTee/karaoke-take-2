require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../guests')
require_relative ('../rooms')

class GuestsSpec < MiniTest::Test

  def test_can_create_guest
    guest = Guest.new("steve")
    assert_equal(Guest , guest.class)
  end

  def test_can_get_guest_name
    guest = Guest.new("steve")
    assert_equal("steve", guest.guest_name())
  end

  

end