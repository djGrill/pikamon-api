# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PikamonWild, :type => :model do
  it_behaves_like 'paranoid model'

  it { is_expected.to belong_to(:pikamon) }
  it { is_expected.to belong_to(:user).optional }

  it { is_expected.to validate_presence_of(:pikamon) }
  it { is_expected.to validate_presence_of(:hp) }
  it { is_expected.to validate_presence_of(:cp) }
  it { is_expected.to validate_presence_of(:lonlat) }

  describe '.within' do
    it 'returns empty if there isnt any PikamonWild nearby' do
      expect(described_class.within('31.5771115', '130.553647', 5)).to be_empty
    end

    it 'returns nearby PikamonWilds' do
      FactoryBot.create(:pikamon_wild, lonlat: 'POINT(130.553647 31.5771115)')
      FactoryBot.create(:pikamon_wild, lonlat: 'POINT(130.553647 31.5771185)')

      pikamon_wilds = described_class.within('31.5771115', '130.553647', 5)

      expect(pikamon_wilds.count).to be 2
    end

    it 'returns nearby PikamonWilds ordered by distance' do
      pikamon_wild1 = FactoryBot.create(:pikamon_wild, lonlat: 'POINT(130.553647 31.5771185)')
      pikamon_wild2 = FactoryBot.create(:pikamon_wild, lonlat: 'POINT(130.553647 31.5771115)')
      pikamon_wild3 = FactoryBot.create(:pikamon_wild, lonlat: 'POINT(130.553647 31.5771146)')

      pikamon_wilds = described_class.within('31.5771115', '130.553647', 5)

      expect(pikamon_wilds[0].id).to be pikamon_wild2.id
      expect(pikamon_wilds[1].id).to be pikamon_wild3.id
      expect(pikamon_wilds[2].id).to be pikamon_wild1.id
    end

    it 'doesnt return PikamonWild that are farther than distance_in_meters' do
      FactoryBot.create(:pikamon_wild, lonlat: 'POINT(130.553647 31.5771115)')
      FactoryBot.create(:pikamon_wild, lonlat: 'POINT(130.553647 31.5771185)')
      pikamon_wild_far = FactoryBot.create(:pikamon_wild, lonlat: 'POINT(130.553647 31.5772)')

      pikamon_wilds = described_class.within('31.5771115', '130.553647', 5)

      expect(pikamon_wilds.count).to be 2
      expect(pikamon_wilds.map(&:id)).not_to include(pikamon_wild_far.id)
    end
  end
end
