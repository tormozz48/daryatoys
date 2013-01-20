class AddTranslateToNew < ActiveRecord::Migration
  def self.up
  	New.create_translation_table!({
      :title => :string,
      :body => :string
    }, {
      :migrate_data => true
    })
  end

  def self.down
  	New.drop_translation_table! :migrate_data => true
  end
end
