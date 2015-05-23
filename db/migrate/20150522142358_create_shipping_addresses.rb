class CreateShippingAddresses < ActiveRecord::Migration
  def change
    create_table :shipping_addresses do |t|
      t.string :line_1, :null => false
      t.string :line_2, :null => true
      t.string :city, :null => false
      t.string :province, :null => false
      t.string :zip_code, :null => false
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :shipping_addresses, :users
  end
end
