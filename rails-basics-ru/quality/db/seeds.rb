# frozen_string_literal: true

require 'faker'

5.times do
  Bulletin.create(
    title: Faker::Name.first_name,
    body: Faker::Name.last_name,
    published: true
  )
end
