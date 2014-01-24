class FizzBuzz
  def initialize(upper_bound)
    @upper_bound = upper_bound
  end

  def run
    numbers = 1.upto(@upper_bound)
    result = []

    numbers.each do |number|
      substitution = if multiple_of?(3, number) && multiple_of?(5,number)
        "FizzBuzz"
      elsif multiple_of?(3, number)
        "Fizz"
      elsif multiple_of?(5,number)
        "Buzz"
      else
        number
      end

      result << substitution
    end
    result
  end

  private

  def multiple_of?(divided_by, number_in_question)
    number_in_question % divided_by == 0
  end
end