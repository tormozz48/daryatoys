class Category < ActiveRecord::Base
  validates :name, :enabled, :presence => true
  validates :name, :uniqueness => true
  validates :name, :length => {:minimum => 3, :maximum => 255}
  validates :enabled, :inclusion => { :in => [true, false] }

  belongs_to :category
  has_many :categories, :dependent => :delete_all
  has_many :products, :dependent => :delete_all

  scope :_enabled, -> { where(:enabled => true) }
  scope :_with_enabled_products, -> { joins(:products).where(:products =>{:enabled => true}) }
  scope :_order_by_name, -> { order('name asc') }

  attr_accessible :name, :enabled, :category, :categories

  #def self.get_categories
  #  return Category._enabled._with_enabled_products._order_by_name
  #end

end
