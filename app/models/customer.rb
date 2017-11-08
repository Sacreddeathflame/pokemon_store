class Customer < ApplicationRecord
  belongs_to :province
  has_many :orders

  validates :first_name, :country, :address, presence: true
end
