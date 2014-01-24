require './fizzbuzz'
require 'rspec/core'

describe FizzBuzz do
  it 'returns a list of numbers based on initialization' do
    fizzbuzz = FizzBuzz.new(2)

    expected = [1, 2]

    actual = fizzbuzz.run

    expect(actual).to eq expected
  end

  it 'substitutes Fizz for multiples of 3' do
    fizzbuzz = FizzBuzz.new(6)

    expected = [1, 2, 'Fizz', 4, 5, 'Fizz']

    actual = fizzbuzz.run

    expect(actual).to eq expected
  end
end