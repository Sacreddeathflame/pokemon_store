class LineItem < ApplicationRecord
  belongs_to :technical_machine
  belongs_to :order

  validates :technical_machine_id, :order_id, presence: true
end
