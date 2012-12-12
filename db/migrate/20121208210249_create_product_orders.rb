class CreateProductOrders < ActiveRecord::Migration
  def change
    create_table :product_orders do |t|
      t.string :email
      t.string :phone
      t.string :first_name
      t.string :last_name
      t.text :comment

      t.references :product
      t.references :order_status

      t.timestamps
    end
  end
end
