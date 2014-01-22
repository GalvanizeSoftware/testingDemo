class Bike
  attr_reader :color

  def initialize(color)
    @color = color
  end

  def cool?
    color == "blue"
  end
end