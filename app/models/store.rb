class Store < ActiveRecord::Base
  has_many :employees
  has many :managers
  has many :bikes
  has many :customers
end
