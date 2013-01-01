class AddProductToComment < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.references :products
    end
  end
end
