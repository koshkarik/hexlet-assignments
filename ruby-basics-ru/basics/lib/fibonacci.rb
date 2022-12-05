# frozen_string_literal: true

# BEGIN
def fibonacci(num, stored_results = {})
  return 0 if num.zero?
  return 1 if num == 1
  return stored_results[num] if stored_results[num]

  stored_results[num] = fibonacci(num - 1, stored_results) + fibonacci(num - 2, stored_results)
end
# END
