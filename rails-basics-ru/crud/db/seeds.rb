# frozen_string_literal: true

require 'faker'

10.times do
  created = Task.create!(
    name: Faker::Lorem.sentence,
    description: Faker::Lorem.sentence,
    status: 'new',
    creator: Faker::Name.unique.name,
    completed: false
  )
  puts created
end
