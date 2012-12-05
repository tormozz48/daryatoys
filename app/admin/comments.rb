ActiveAdmin.register Comment, :as => "UserComment" do
  menu :priority => 7, :parent=>I18n.t('admin.different'), :label => proc{ I18n.t('admin.comment.title') }
  index :title => I18n.t('admin.comment.title') do
    selectable_column
    column I18n.t('admin.comment.field.email'), :email
    column I18n.t('admin.comment.field.fio'), :fio
    column I18n.t('admin.comment.field.title'), :title
    default_actions
  end

  actions :all, :except => [:new, :edit]

  filter :email, :label => I18n.t('admin.comment.field.email')
  filter :fio, :label => I18n.t('admin.comment.field.fio')
  filter :title, :label => I18n.t('admin.comment.field.title')

  form do |f|
    f.inputs I18n.t('admin.comment.fieldset.title') do
      f.input :email, :label => I18n.t('admin.comment.field.email')
      f.input :fio, :label => I18n.t('admin.comment.field.fio')
      f.input :title, :label =>  I18n.t('admin.comment.field.title')
      f.input :body, :label =>  I18n.t('admin.comment.field.body')
    end
    f.buttons
  end
end
