class AddTablesAndColumns < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :status, :string
    add_column :technical_machines, :status, :string
  end
end
