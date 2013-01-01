ActiveAdmin.register New do
  menu :priority => 9, :parent=>I18n.t('admin.different'), :label => proc{ I18n.t('admin.new.title') }
  index :title => I18n.t('admin.new.title') do
    column I18n.t('admin.new.field.date'), :date
    column I18n.t('admin.new.field.title'), :title
    default_actions
  end

  filter :date, :label => I18n.t('admin.new.field.date')
  filter :title, :label => I18n.t('admin.new.field.title')

  form do |f|
    f.inputs I18n.t('admin.new.fieldset.title') do
      f.input :date, :label => I18n.t('admin.new.field.date')
      f.input :title, :label => I18n.t('admin.new.field.title')
      f.input :body, :label =>  I18n.t('admin.new.field.body')
    end
    f.buttons
  end
end
