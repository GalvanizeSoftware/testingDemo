require './bike'

def assert_equal(expected, actual)
  if expected == actual
    puts "."
  else
    raise "Test Failed! <#{expected}> != <#{actual}>"
  end
end

def setup
  @red_bike = Bike.new("red")
end

def test_color
  setup

  # What I want the code to do.
  expected = "red"

  # What the code actually does.
  actual = @red_bike.color

  # Do they match up.
  assert_equal(expected, actual)
end

def test_red_bikes_are_not_cool
  setup

  # What I want the code to do.
  expected = false

  # What the code actually does.
  actual = @red_bike.cool?

  # Do they match up.
  assert_equal(expected, actual)
end

def test_blue_bikes_are_cool
  #Setup
  blue_bike = Bike.new("blue")

  # What I want the code to do.
  expected = true

  # What the code actually does.
  actual = blue_bike.cool?

  # Do they match up.
  assert_equal(expected, actual)
end

# Run the tests by calling the methods
test_color
test_red_bikes_are_not_cool
test_blue_bikes_are_cool
