class ProductStatus < ActiveRecord::Base
  validates :code, :name, :presence => true
  validates :code, :uniqueness => true
  validates :code, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0 }
  validates :name, :length => { :minimum => 3, :maximum => 255 }

  has_many :products

  CODE_EXIST = 0
  CODE_ORDER = 1

  def self.get_exist
    return ProductStatus.find_by_code(ProductStatus::CODE_EXIST)
  end

  def self.get_order
    return ProductStatus.find_by_code(ProductStatus::CODE_ORDER)
  end

end
