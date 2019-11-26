# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PikamonWild, :type => :model do
  it_behaves_like 'paranoid model'

  it { is_expected.to belong_to(:pikamon) }
  it { is_expected.to belong_to(:user) }

  it { is_expected.to validate_presence_of(:pikamon) }
  it { is_expected.to validate_presence_of(:user) }
  it { is_expected.to validate_presence_of(:hp) }
  it { is_expected.to validate_presence_of(:cp) }
  it { is_expected.to validate_presence_of(:lat) }
  it { is_expected.to validate_presence_of(:lng) }
end
