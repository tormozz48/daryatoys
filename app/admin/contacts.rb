ActiveAdmin.register Contact do
  menu :priority => 5, :label => proc{ I18n.t('admin.contact.title') }
  index :title => I18n.t('admin.contact.title') do
    column I18n.t('admin.contact.field.email'), :email
    column I18n.t('admin.contact.field.phone1'), :phone1
    column I18n.t('admin.contact.field.phone2'), :phone2
    column I18n.t('admin.contact.field.skype'), :skype
    default_actions
  end

  actions :all, :except => [:new, :show, :destroy]

  filter :email, :label => I18n.t('admin.contact.field.email')
  filter :phone1, :label => I18n.t('admin.contact.field.phone1')
  filter :phone2, :label => I18n.t('admin.contact.field.phone2')
  filter :skype, :label => I18n.t('admin.contact.field.skype')


  form do |f|
    f.inputs I18n.t('admin.contact.fieldset.title') do
      f.input :email, :label => I18n.t('admin.contact.field.email')
      f.input :phone1, :label => I18n.t('admin.contact.field.phone1')
      f.input :phone2, :label =>  I18n.t('admin.contact.field.phone2')
      f.input :skype, :label =>  I18n.t('admin.contact.field.skype')
      f.input :area, :label =>  I18n.t('admin.contact.field.area')
    end
    f.buttons
  end
end
