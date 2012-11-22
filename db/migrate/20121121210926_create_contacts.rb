class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :email, :null => false
      t.string :phone1, :null => false
      t.string :phone2, :null => true
      t.text :area, :null => true
      t.string :skype, :null => true
      t.timestamps
    end
  end
end
