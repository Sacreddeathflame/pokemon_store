class TechnicalMachineImage < ActiveRecord::Migration[5.1]
  def change
    change_column :technical_machines, :image, :integer
    add_foreign_key :technical_machine, :pictures, column: :image,  primary_key: :id
  end
end
