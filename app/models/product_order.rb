class ProductOrder < ActiveRecord::Base

  attr_accessible :comment, :email, :first_name, :last_name
  attr_accessible :phone, :product_id, :order_status_id, :humanizer_question_id, :humanizer_answer

  belongs_to :product
  belongs_to :order_status

  validates :email, :phone, :first_name, :last_name, :product_id, :order_status_id, :presence => true

  validates :email, :length => {:maximum => 100}
  validates :phone, :length => {:maximum => 20}
  validates :first_name, :length => {:maximum => 30}
  validates :last_name, :length => {:maximum => 30}
  validates :comment, :length => {:maximum => 255}

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

  after_create :send_email

  protected
  def send_email
    OrderMailer.order_email(self).deliver
  end

  include Humanizer
  require_human_on :create

end
