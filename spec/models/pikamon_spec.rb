# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Pikamon, :type => :model do
  it_behaves_like 'paranoid model'

  it { is_expected.to belong_to(:pikamon_type) }

  it { is_expected.to have_many(:pikamon_wilds).inverse_of(:pikamon).dependent(:destroy) }

  it { is_expected.to validate_presence_of(:number) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:pikamon_type) }
  it { is_expected.to validate_presence_of(:image_url) }
end
