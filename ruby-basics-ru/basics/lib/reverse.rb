# frozen_string_literal: true

# BEGIN
def reverse(str)
  result = ''
  str.chars.each do |letter|
    result = "#{letter}#{result}"
  end
  result
end
# END
