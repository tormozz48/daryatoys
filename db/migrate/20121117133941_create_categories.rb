class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, :null => false
      t.boolean :enabled, :null => false, :default => true
      t.references :category, :null => true
      t.timestamps
    end

    add_index :categories, :name
    add_index :categories, :enabled
  end
end
