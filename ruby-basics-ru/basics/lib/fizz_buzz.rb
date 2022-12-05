# frozen_string_literal: true

# BEGIN
def fizz_buzz(first, last)
  return nil if first > last

  numbers = (first..last).map do |num|
    divided_by5 = (num % 5).zero?
    divided_by3 = (num % 3).zero?
    next 'FizzBuzz' if divided_by3 && divided_by5
    next 'Buzz' if divided_by5

    divided_by3 ? 'Fizz' : num
  end
  numbers.join ' '
end

# END
