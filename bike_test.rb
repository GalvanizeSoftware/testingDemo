require './bike'
require 'minitest/autorun'

class TestBike < Minitest::Test
  def setup
    @red_bike = Bike.new("red")
  end

  def test_color
    # What I want the code to do.
    expected = "red"

    # What the code actually does.
    actual = @red_bike.color

    # Do they match up.
    assert_equal(expected, actual)
  end

  def test_red_bikes_are_not_cool
    refute(@red_bike.cool?)
  end

  def test_blue_bikes_are_cool
    #Setup
    blue_bike = Bike.new("blue")

    assert(blue_bike.cool?)
  end
end
