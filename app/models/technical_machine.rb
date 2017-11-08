class TechnicalMachine < ApplicationRecord
  belongs_to :types
  has_many :line_items
  has_many :orders, :through => :line_items


  validates :name, uniqueness: true
  validates :price, numericality: true
  validates :quantity, numericality: { only_integer: true }
end
