class Province < ApplicationRecord
  has_many :customers

  validates :pst_rate, :gst_rate, :hst_rate, numericality: true
  validates :pst_rate, :gst_rate, :hst_rate, presence: true
end
