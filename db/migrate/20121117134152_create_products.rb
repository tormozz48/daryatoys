class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, :null => false
      t.text :description
      t.boolean :enabled, :null => false, :default => true
      t.integer :price, :null => false
      t.references :category, :null => false
      t.references :product_status, :null => false
      t.timestamps
    end

    add_index :products, :name
    add_index :products, :enabled
  end
end
