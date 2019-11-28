# frozen_string_literal: true

class User < ApplicationRecord
  acts_as_paranoid

  has_many :pikamon_wilds, :inverse_of => :pikamon, :dependent => :destroy

  validates :uuid, presence: true
end
