class Order < ApplicationRecord
  has_many :line_items
  has_many :technical_machines, :through => :line_items
  belongs_to :customer

  validates :pst_rate, :gst_rate, :hst_rate, numericality: true
  validates :pst_rate, :gst_rate, :hst_rate, presence: true
end
