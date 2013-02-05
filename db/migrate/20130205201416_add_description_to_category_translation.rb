class AddDescriptionToCategoryTranslation < ActiveRecord::Migration
  def change
    add_column :category_translations, :description, :text
  end
end
