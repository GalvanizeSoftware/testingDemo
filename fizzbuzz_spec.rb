require './fizzbuzz'
require 'rspec/core'

describe FizzBuzz do
  it 'returns a list of numbers based on initialization' do
    fizzbuzz = FizzBuzz.new(5)

    expected = [1, 2, 3, 4, 5]

    actual = fizzbuzz.run

    expect(actual).to eq expected
  end
end