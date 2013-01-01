class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.date :date
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
