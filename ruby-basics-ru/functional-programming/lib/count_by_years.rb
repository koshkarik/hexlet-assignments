# frozen_string_literal: true

# BEGIN
def count_by_years(collection)
  filtered = collection.filter { |item| item[:gender] == 'male' }
  filtered.each_with_object ({}) do |item, hash|
    year, = item[:birthday].split('-')
    hash[year] = 0 unless hash[year]
    hash[year] += 1
  end
end
# END
