class Store < ActiveRecord::Base
  has_many :employees

  validates_length_of :name, minimum: 5

  validates_numericality_of :annual_revenue, on: :only_integer
  validates_numericality_of :annual_revenue, greater_than: 0
end
