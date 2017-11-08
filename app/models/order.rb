class Order < ApplicationRecord
  has_many :line_items
  has_many :technical_machines, :through => :line_items
  belongs_to :customer
end
