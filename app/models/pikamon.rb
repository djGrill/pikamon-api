# frozen_string_literal: true

class Pikamon < ApplicationRecord
  acts_as_paranoid

  belongs_to :pikamon_type

  has_many :pikamon_wilds, :inverse_of => :pikamon, :dependent => :destroy

  validates :number, :name, :pikamon_type, :image_url, presence: true
end
