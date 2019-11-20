# frozen_string_literal: true

FactoryBot.define do
  factory :pokemon do
    pokemon_type
    number { (1..151).to_a.sample }
    name { Faker::Games::Pokemon.name }
    image_url { Faker::Avatar.image }
  end
end
