class OrderStatus < ActiveRecord::Base
  attr_accessible :code, :name, :product_orders

  has_many :product_orders

  validates :code, :name, :presence => true

  validates :code, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
  validates :code, :uniqueness => true
  validates :name, :length => {:minimum => 3, :maximum => 255}

  NEW = 0
  PAYED = 1
  SENT = 2
  COMPLETED = 3
  CANCELED = 4

  def self.get_new
    return OrderStatus.find_by_code(NEW)
  end

  def self.get_payed
    return OrderStatus.find_by_code(PAYED)
  end

  def self.get_sent
    return OrderStatus.find_by_code(SENT)
  end

  def self.get_completed
    return OrderStatus.find_by_code(COMPLETED)
  end

  def self.get_canceled
    return OrderStatus.find_by_code(CANCELED)
  end

end
