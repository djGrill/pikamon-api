# frozen_string_literal: true

FactoryBot.define do
  factory :pikamon_type do
    name { Faker::Game.genre }
  end
end
