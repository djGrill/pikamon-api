# frozen_string_literal: true

class Pikamon < ApplicationRecord
  acts_as_paranoid

  belongs_to :pikamon_type

  validates :number, :name, :pikamon_type, :image_url, presence: true
end
