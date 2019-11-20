# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Pokemon, :type => :model do
  it_behaves_like 'paranoid model'

  it { is_expected.to belong_to(:pokemon_type) }

  it { is_expected.to validate_presence_of(:number) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:pokemon_type) }
  it { is_expected.to validate_presence_of(:image_url) }
end
