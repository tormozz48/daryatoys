class Product < ActiveRecord::Base
  validates :name, :description, :price, :enabled, :category, :product_status, :presence => true
  validates :name, :uniqueness => true
  validates :name, :length => { :minimum => 3, :maximum => 255 }
  validates :enabled, :inclusion => { :in => [true, false] }
  validates :price, :numericality => { :greater_than_or_equal_to => 0 }
  validates :description, :length => { :minimum => 0, :maximum => 2000 }

  belongs_to :category
  belongs_to :product_status
  has_many :product_images, :dependent => :delete_all

  attr_accessible :name, :description, :enabled, :price, :category, :product_status, :product_images
  accepts_nested_attributes_for :product_images

  scope :_enabled, -> { where(:enabled => true) }

end

