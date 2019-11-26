# frozen_string_literal: true

class PikamonWild < ApplicationRecord
  acts_as_paranoid

  belongs_to :pikamon
  belongs_to :user

  validates :pikamon, :user, :hp, :cp, presence: true
end
