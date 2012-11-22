class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :email, :null => false
      t.string :fio, :null => false
      t.string :title, :null => false
      t.text :body, :null => false
      t.timestamps
    end

    add_index :comments, :email

  end
end
