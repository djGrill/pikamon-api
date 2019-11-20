# frozen_string_literal: true

class PokemonType < ApplicationRecord
  acts_as_paranoid

  has_many :pokemons, :inverse_of => :pokemon_type, :dependent => :destroy

  validates :name, presence: true
end
