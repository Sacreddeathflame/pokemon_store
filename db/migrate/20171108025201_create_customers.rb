class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :country
      t.string :address
      t.string :email
      t.integer :province_id

      t.timestamps
    end
  end
end
