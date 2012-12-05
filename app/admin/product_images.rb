ActiveAdmin.register ProductImage do
  menu :priority => 4, :label => proc{ I18n.t('admin.product_image.title') }
  index :title => I18n.t('admin.product_image.title') do
    selectable_column
    column I18n.t('admin.product_image.field.product'), :product
    column I18n.t('admin.product_image.field.image') do |product_image|
      image_tag(product_image.image.url(:thumbnail))
    end
    #column I18n.t('admin.product_image.field.image'), :image
    default_actions
  end

  filter :product, :label => I18n.t('admin.product_image.field.product')

  form do |f|
    f.inputs I18n.t('admin.product.fieldset.title'), :multipart => true do
        f.input :product
        f.input :image_cache, :as => :hidden
        f.input :image, :as=> :file, :label => I18n.t('admin.product_image.field.image')
    end
    f.buttons
  end
end
