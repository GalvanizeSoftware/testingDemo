require './bike'
require 'rspec/core'

describe Bike do
  before do
    @red_bike = Bike.new("red")
  end

  it 'knows what color it is' do
    expect(@red_bike.color).to eq "rd"
  end

  it 'knows that red bikes are not cool' do
    expect(@red_bike.cool?).to eq false
  end

  it 'knows that blue bikes are cool' do
    #Setup
    blue_bike = Bike.new("blue")

    expect(blue_bike.cool?).to eq true
  end
end
