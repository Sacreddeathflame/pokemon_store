class LineItem < ApplicationRecord
  belongs_to :technical_machine
  belongs_to :order
end
