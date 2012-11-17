class CreateProductStatuses < ActiveRecord::Migration
  def change
    create_table :product_statuses do |t|
      t.integer :code, :null => false
      t.string :name, :null => false
      t.timestamps
    end

    add_index :product_statuses, :code
  end
end
