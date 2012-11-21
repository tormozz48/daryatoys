class ProductImage < ActiveRecord::Base
  mount_uploader :image, ProductUploader
  belongs_to :product
end
