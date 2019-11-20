# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PikamonType, :type => :model do
  it_behaves_like 'paranoid model'

  it { is_expected.to have_many(:pikamons) }

  it { is_expected.to validate_presence_of(:name) }
end
