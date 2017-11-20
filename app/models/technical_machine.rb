class TechnicalMachine < ApplicationRecord
  belongs_to :type
  has_many :line_items
  has_many :orders, :through => :line_items


  validates :name, uniqueness: true
  validates :price, numericality: true
  validates :quantity, numericality: { only_integer: true }
  validates :type_id, :status, presence: true

  def self.search(search)
    where("name LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%")
  end

  def self.type_search(type)
    where("type_id = ?", "#{type}")
  end

  def self.full_search(search, type)
    where("name LIKE ? OR description LIKE ? AND type_id = ?", "%#{search}%", "%#{search}%", "#{type}")
  end

end
