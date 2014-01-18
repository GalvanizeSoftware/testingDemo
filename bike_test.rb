require './bike'
require 'minitest/autorun'

class TestBike < Minitest::Test
  def setup
    @red_bike = Bike.new("red")
  end

  def test_color
    assert_equal("red", @red_bike.color)
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
