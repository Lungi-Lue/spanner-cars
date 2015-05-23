class CreateProductReviews < ActiveRecord::Migration
  def change
    create_table :product_reviews do |t|
      t.text :review, :null => false
      t.references :product, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :product_reviews, :products
    add_foreign_key :product_reviews, :users
  end
end
