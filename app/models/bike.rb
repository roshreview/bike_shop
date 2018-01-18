class Bike < ActiveRecord::Base
  belongs_to :store
  has_many :wheels
  has_many :gears
  has_many :accessories

  has_one :frame
  has_one :chain
  has_one :seat
  has_one :helmet
end
