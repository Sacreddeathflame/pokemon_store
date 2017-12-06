class TechnicalMachine < ApplicationRecord
  belongs_to :type
  belongs_to :picture
  has_many :line_items
  has_many :orders, :through => :line_items


  validates :name, uniqueness: true
  validates :price, numericality: true
  validates :quantity, numericality: { only_integer: true }
  validates :type_id, :status, presence: true

  def self.search(search, filter)
    where("name LIKE ? OR description LIKE ? AND status LIKE ?", "%#{search}%", "%#{search}%", "%#{filter}%")
  end

  def self.type_search(type, filter)
    where("type_id = ? AND status LIKE ?", "#{type}", "%#{filter}%")
  end

  def self.full_search(search, type, filter)
    where("name LIKE ? OR description LIKE ? AND type_id = ? AND status LIKE ?", "%#{search}%", "%#{search}%", "#{type}", "%#{filter}%")
  end

  def self.all_search(filter)
    where("status LIKE ?", "#{filter}")
  end
end
