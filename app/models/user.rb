# frozen_string_literal: true

class User < ApplicationRecord
  acts_as_paranoid

  validates :uuid, :username, presence: true
end
