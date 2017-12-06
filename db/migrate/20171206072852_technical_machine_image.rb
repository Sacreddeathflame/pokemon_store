class TechnicalMachineImage < ActiveRecord::Migration[5.1]
  def change
    remove_column :technical_machines, :image
    add_column :technical_machines, :picture_id, :integer
    add_foreign_key :picture_id, :technical_machines
  end
end
