class CreateProductImages < ActiveRecord::Migration
  def change
    create_table :product_images do |t|
      t.string :image, :null => false
      t.references :product, :null => false
      t.timestamps
    end
  end
end
