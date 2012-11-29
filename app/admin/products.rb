ActiveAdmin.register Product do
  menu :priority => 4, :label => proc{ I18n.t('admin.product.title') }
  index :title => I18n.t('admin.product.title') do
    selectable_column
    column I18n.t('admin.product.field.category'), :category
    column I18n.t('admin.product.field.name'), :name
    column I18n.t('admin.product.field.price'), :price
    column I18n.t('admin.product.field.status'), :product_status
    column I18n.t('admin.product.field.enabled'), :enabled
    default_actions
  end

  filter :category, :label => I18n.t('admin.product.field.category')
  filter :name, :label => I18n.t('admin.product.field.name')
  filter :price, :label => I18n.t('admin.product.field.price')
  filter :product_status, :label => I18n.t('admin.product.field.status')
  filter :enabled, :as => :check_boxes, :label => I18n.t('admin.product.field.enabled')

  batch_action :mark_as_enabled do |selection|
    Product.enable_all(selection)
    redirect_to :back
  end

  batch_action :mark_as_disabled do |selection|
    Product.disable_all(selection)
    redirect_to :back
  end

  form do |f|
    f.inputs I18n.t('admin.product.fieldset.title'), :multipart => true do
      f.input :category, :label => I18n.t('admin.product.field.category')
      f.input :name, :label => I18n.t('admin.product.field.name')
      f.input :enabled, :label =>  I18n.t('admin.product.field.enabled')
      f.input :product_status, :label =>  I18n.t('admin.product.field.status')
      f.input :price, :label =>  I18n.t('admin.product.field.price')
      f.input :description, :label =>  I18n.t('admin.product.field.description')
      f.has_many :product_images do |j|
        j.input :image, :as=> :file, :hint => j.template.image_tag(j.object.image.url(:thumbnail))
        j.input :image_cache, :as => :hidden
      end
    end
    f.buttons
  end
end
