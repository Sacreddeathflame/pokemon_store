class CreateTechnicalMachines < ActiveRecord::Migration[5.1]
  def change
    create_table :technical_machines do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :quantity
      t.string :image
      t.integer :type_id

      t.timestamps
    end
  end
end
