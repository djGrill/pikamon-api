# frozen_string_literal: true

class PikamonWild < ApplicationRecord
  acts_as_paranoid

  belongs_to :pikamon
  belongs_to :user

  validates :pikamon, :hp, :cp, :lonlat, presence: true

  scope :within, lambda { |lat, lon, distance_in_meters = 5|
    where_format = format(%{
     ST_DWithin(lonlat,
                ST_GeomFromText('POINT(%f %f)', 4326)::geography,
                %d,
                true)
    }, lon, lat, distance_in_meters)

    order_format = format(%{
     ST_Distance(lonlat, 'POINT(%f %f)')
    }, lon, lat)

    where(Arel.sql(where_format))
      .order(Arel.sql(order_format))
  }
end
