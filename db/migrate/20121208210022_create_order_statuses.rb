class CreateOrderStatuses < ActiveRecord::Migration
  def change
    create_table :order_statuses do |t|
      t.integer :code
      t.string :name
      t.timestamps
    end

  end
end
