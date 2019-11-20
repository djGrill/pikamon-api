# frozen_string_literal: true

class PikamonType < ApplicationRecord
  acts_as_paranoid

  has_many :pikamons, :inverse_of => :pikamon_type, :dependent => :destroy

  validates :name, presence: true
end
