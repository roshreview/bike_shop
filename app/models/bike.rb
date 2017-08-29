class Bike < ActiveRecord::Base
  has_many :stores
  has_many :wheels
  has_many :gears
  has_many :accessories

  has_one :frame
  has_one :chain
  has_one :seat
  has_one :helmet
end
