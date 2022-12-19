# frozen_string_literal: true

# BEGIN
def get_same_parity(list)
  return [] if list.empty?
  is_even = (list[0] % 2).zero?
  list.filter do |num|
    is_even ? num.even? : num.odd?
  end
end
# END
