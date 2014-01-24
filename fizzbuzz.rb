class FizzBuzz
  def initialize(upper_bound)
    @upper_bound = upper_bound
  end

  def run
    numbers = 1.upto(@upper_bound)
    result = []

    numbers.each do |number|
      if number % 3 == 0
        result << "Fizz"
      else
        result << number
      end
    end
    result
  end
end