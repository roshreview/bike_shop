class Store < ActiveRecord::Base
  has_many :employees
  has_many :managers
  has_many :bikes
  has_many :customers
end
