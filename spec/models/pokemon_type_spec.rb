require 'rails_helper'

RSpec.describe PokemonType, type: :model do
  it_behaves_like 'paranoid model'

  it { should validate_presence_of(:name) }
end
