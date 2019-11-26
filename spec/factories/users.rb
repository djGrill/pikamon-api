# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    uuid { Faker::Internet.uuid }
    username { Faker::Internet.username }
  end
end
