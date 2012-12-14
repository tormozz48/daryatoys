ActiveAdmin.register ProductOrder do
  menu :priority => 5, :label => proc{ I18n.t('admin.order.title') }
  index :title => I18n.t('admin.order.title') do
    selectable_column
    column I18n.t('admin.order.field.order_status'), :order_status
    column I18n.t('admin.order.field.product'), :product
    column I18n.t('admin.order.field.email'), :email
    column I18n.t('admin.order.field.phone'), :phone
    column I18n.t('admin.order.field.first_name'), :first_name
    column I18n.t('admin.order.field.last_name'), :last_name
    default_actions
  end

  actions :all, :except => [:new, :edit]

  filter :order_status, :label => I18n.t('admin.order.field.order_status')
  filter :product, :label => I18n.t('admin.order.field.product')
  filter :email, :label => I18n.t('admin.order.field.email')
  filter :phone, :label => I18n.t('admin.order.field.phone')
  filter :first_name, :label => I18n.t('admin.order.field.first_name')
  filter :last_name, :label => I18n.t('admin.order.field.last_name')

  batch_action :mark_as_new do |selection|
    ProductOrder.mark_as_new(selection)
    redirect_to :back
  end

  batch_action :mark_as_payed do |selection|
    ProductOrder.mark_as_payed(selection)
    redirect_to :back
  end

  batch_action :mark_as_sent do |selection|
    ProductOrder.mark_as_sent(selection)
    redirect_to :back
  end

  batch_action :mark_as_completed do |selection|
    ProductOrder.mark_as_completed(selection)
    redirect_to :back
  end

  batch_action :mark_as_canceled do |selection|
    ProductOrder.mark_as_canceled(selection)
    redirect_to :back
  end

  form do |f|
    f.inputs I18n.t('admin.order.fieldset.title') do
      f.input :order_status, :label => I18n.t('admin.order.field.order_status')
      f.input :product, :label => I18n.t('admin.order.field.product')
      f.input :email, :label =>  I18n.t('admin.order.field.email')
      f.input :phone, :label =>  I18n.t('admin.order.field.phone')
      f.input :first_name, :label =>  I18n.t('admin.order.field.first_name')
      f.input :last_name, :label =>  I18n.t('admin.order.field.last_name')
      f.input :comment, :label =>  I18n.t('admin.order.field.comment')
    end
    f.buttons
  end
end
