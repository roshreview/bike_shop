class Manager < ActiveRecord::Base
  belongs_to :store
  has_many :employees
end
