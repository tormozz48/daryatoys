class ProductImage < ActiveRecord::Base
  mount_uploader :image, ProductUploader
  has_one :product
end
