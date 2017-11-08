class AddForeignKeys < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :province_id, :customers
    add_foreign_key :customer_id, :orders
    add_foreign_key :technical_machine_id, :line_items
    add_foreign_key :order_id, :line_items
    add_foreign_key :type_id, :technical_machines
  end
end
