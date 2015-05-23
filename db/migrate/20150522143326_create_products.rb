class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title, :null => false
      t.text :description, :null => false
      t.decimal :price, :null => false
      t.references :product_category, index: true

      t.timestamps null: false
    end
    add_foreign_key :products, :product_categories
  end
end
