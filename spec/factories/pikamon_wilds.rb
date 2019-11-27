# frozen_string_literal: true

FactoryBot.define do
  factory :pikamon_wild do
    pikamon
    user
    hp { Faker::Number.number(digits: 3) }
    cp { Faker::Number.number(digits: 3) }
    lonlat { "POINT(#{Faker::Address.longitude} #{Faker::Address.latitude})" }
  end
end
