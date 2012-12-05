class Category < ActiveRecord::Base
  validates :name, :enabled, :presence => true
  validates :name, :uniqueness => true
  validates :name, :length => {:minimum => 3, :maximum => 255}
  validates :enabled, :inclusion => { :in => [true, false] }

  belongs_to :category
  has_many :categories, :dependent => :delete_all
  has_many :products, :dependent => :delete_all

  scope :_enabled, -> { where(:enabled => true) }
  scope :_order_by_name, -> { order('name asc') }

  attr_accessible :name, :enabled, :category, :categories

  def has_enabled_products
    return self.products._enabled.size > 0
  end

  def get_enabled_products
    return self.products._enabled
  end

  def self.enable_all(ids)
    Category.update_all({:enabled => true}, {:id => ids})
  end

  def self.disable_all(ids)
    Category.update_all({:enabled => false}, {:id => ids})
  end
end
