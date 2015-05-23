class CreateProductMetaInfos < ActiveRecord::Migration
  def change
    create_table :product_meta_infos do |t|
      t.string :make, :null => true
      t.string :model, :null => true
      t.string :color, :null => true
      t.text :additional_info, :null => true
      t.references :product, index: true

      t.timestamps null: false
    end
    add_foreign_key :product_meta_infos, :products
  end
end
