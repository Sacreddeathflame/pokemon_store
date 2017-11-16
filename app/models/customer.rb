class Customer < ApplicationRecord
  belongs_to :province
  has_many :orders

  validates :first_name, :location, :address, :province, presence: true
end
