class CreateInformation < ActiveRecord::Migration[5.1]
  def change
    drop_table :information
    create_table :information do |t|
      t.text :description
      t.string :postal_code
      t.string :street
      t.string :email
      t.string :province
      t.string :city

      t.timestamps
    end
  end
end
