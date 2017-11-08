class Type < ApplicationRecord
  has_many :technical_machines

  validates :name, uniqueness: true
end
