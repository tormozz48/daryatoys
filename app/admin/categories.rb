ActiveAdmin.register Category do
  menu :priority => 3, :label => proc{ I18n.t('admin.category.title') }
  index :title => I18n.t('admin.category.title') do
    column I18n.t('admin.category.field.category'), :category
    column I18n.t('admin.category.field.name'), :name
    column I18n.t('admin.category.field.enabled'), :enabled
    default_actions
  end

  filter :name, :label => I18n.t('admin.category.field.name')
  filter :enabled, :as => :check_boxes, :label => I18n.t('admin.category.field.enabled')

  form do |f|
    f.inputs I18n.t('admin.category.fieldset.title') do
      f.input :category, :label => I18n.t('admin.category.field.category')
      f.input :name, :label => I18n.t('admin.category.field.name')
      f.input :enabled, :label =>  I18n.t('admin.category.field.enabled')
    end
    f.buttons
  end
end
