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

    actual = fizzbuzz.run

    expect(actual[2]).to eq 'Fizz'
    expect(actual[5]).to eq 'Fizz'
  end

  it 'substitutes Buzz for multiples of 5' do
    fizzbuzz = FizzBuzz.new(10)

    actual = fizzbuzz.run

    expect(actual[4]).to eq 'Buzz'
    expect(actual[9]).to eq 'Buzz'
  end
end