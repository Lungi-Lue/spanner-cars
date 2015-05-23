class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :quantity, :null => false
      t.references :product, index: true
      t.references :user, index: true
      t.references :shipping_address, index: true
      t.boolean :status, :null => false, :default => false

      t.timestamps null: false
    end
    add_foreign_key :orders, :products
    add_foreign_key :orders, :users
    add_foreign_key :orders, :shipping_addresses
  end
end
