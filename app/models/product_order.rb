class ProductOrder < ActiveRecord::Base

  attr_accessible :comment, :email, :first_name, :last_name, :phone, :product_id, :order_status_id

  belongs_to :product
  belongs_to :order_status

  validates :email, :phone, :first_name, :last_name, :product_id, :order_status_id, :presence => true

  validates :email, :length => {:maximum => 100}
  validates :phone, :length => {:maximum => 20}
  validates :first_name, :length => {:maximum => 30}
  validates :last_name, :length => {:maximum => 30}

  validates :product_id, :order_status_id, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}

  def self.mark_as_new(ids)
    ProductOrder.update_all({:order_status => OrderStatus.get_new}, {:id => ids})
  end

  def self.mark_as_payed(ids)
    ProductOrder.update_all({:order_status => OrderStatus.get_payed}, {:id => ids})
  end

  def self.mark_as_sent(ids)
    ProductOrder.update_all({:order_status => OrderStatus.get_sent}, {:id => ids})
  end

  def self.mark_as_completed(ids)
    ProductOrder.update_all({:order_status => OrderStatus.get_completed}, {:id => ids})
  end

  def self.mark_as_canceled(ids)
    ProductOrder.update_all({:order_status => OrderStatus.get_canceled}, {:id => ids})
  end

end
