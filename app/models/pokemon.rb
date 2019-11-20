# frozen_string_literal: true

class Pokemon < ApplicationRecord
  acts_as_paranoid

  belongs_to :pokemon_type

  validates :number, :name, :pokemon_type, :image_url, presence: true
end
