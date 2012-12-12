ActiveAdmin.register AdminUser do
  menu :priority => 6, :parent=>I18n.t('admin.different'), :label => proc{ I18n.t('admin.admin_user.title') }

  index :title => I18n.t('admin.admin_user.title') do
    column I18n.t('admin.admin_user.email'), :email
    column I18n.t('admin.admin_user.current_sign_in'), :current_sign_in_at
    column I18n.t('admin.admin_user.last_sign_in'), :last_sign_in_at
    column I18n.t('admin.admin_user.sign_in_count'), :sign_in_count
    default_actions                   
  end                                 

  filter :email, :label => I18n.t('admin.admin_user.email')

  form do |f|                         
    f.inputs I18n.t('admin.admin_user.fieldset.title') do
      f.input :email, :label => I18n.t('admin.admin_user.email')
      f.input :password, :label => I18n.t('admin.admin_user.password')
      f.input :password_confirmation, :label => I18n.t('admin.admin_user.password_confirmation')
    end                               
    f.buttons                         
  end                                 
end                                   
