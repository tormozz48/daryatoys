class ProductImage < ActiveRecord::Base
  mount_uploader :image, ProductUploader
  belongs_to :product

  validates :image, :product_id, :presence => true

  attr_accessible :image, :product, :product_id, :image_cache
  attr_readonly :id
end
