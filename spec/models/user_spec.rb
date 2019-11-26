# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, :type => :model do
  it_behaves_like 'paranoid model'

  it { is_expected.to validate_presence_of(:uuid) }
  it { is_expected.to validate_presence_of(:username) }
end
