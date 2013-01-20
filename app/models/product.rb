class Product < ActiveRecord::Base
  translates :name, :description

  validates :name, :description, :price, :enabled, :category_id, :product_status_id, :presence => true
  validates :name, :uniqueness => true
  validates :name, :length => { :minimum => 3, :maximum => 255 }
  validates :enabled, :inclusion => { :in => [true, false] }
  validates :price, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0 }
  validates :description, :length => { :minimum => 0, :maximum => 2000 }

  belongs_to :category
  belongs_to :product_status
  has_many :product_images, :dependent => :delete_all
  has_many :product_orders, :dependent => :delete_all

  attr_accessible :name, :description, :enabled, :price
  attr_accessible :category, :category_id, :product_status, :product_status_id
  attr_accessible :product_images, :product_images_attributes, :product_orders

  accepts_nested_attributes_for :product_images

  scope :_enabled, -> { where(:enabled => true) }

  def self.enable_all(ids)
    Product.update_all({:enabled => true}, {:id => ids})
  end

  def self.disable_all(ids)
    Product.update_all({:enabled => false}, {:id => ids})
  end

  def get_primary_image
    if self.product_images.empty?
       return nil
    else
       return self.product_images.first.image.url(:thumbnail)
    end
  end
end

