class AddTranslateToProductStatus < ActiveRecord::Migration
  def self.up
  	ProductStatus.create_translation_table!({
      :name => :string
    }, {
      :migrate_data => true
    })
  end

  def self.down
  	ProductStatus.drop_translation_table! :migrate_data => true
  end
end
