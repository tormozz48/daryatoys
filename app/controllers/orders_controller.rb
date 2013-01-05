class OrdersController < ApplicationController
  before_filter :retrieve_news_feed
  before_filter :retrieve_contact

  def new
    select_active_menu_item(MENU_CATALOG)
    product = Product.find(params[:product_id])
    order_status = OrderStatus.get_new
    @product_order = ProductOrder.new({:product_id => product.id, :order_status_id => order_status.id})
  end

  def create
    #TODO implement code here
  end
end
