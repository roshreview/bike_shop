class Purchase < ActiveRecord::Base
  belongs_to :customer
  has_many :bikes
end
