class OrdersController < ApplicationController
  before_filter :retrieve_news_feed
  before_filter :retrieve_contact

  def new
    select_active_menu_item(MENU_CATALOG)
    @product = Product.find(params[:product_id])
    order_status = OrderStatus.get_new
    @product_order = ProductOrder.new({:product_id => @product.id, :order_status_id => order_status.id})
  end

  def create
    @product_order = ProductOrder.new(params[:product_order])
      if @product_order.valid?
        if @product_order.save
          flash[:notice] = I18n.t('site.notification.order_was_created',
                                  :product => @product_order.product.name,
                                  :price => @product_order.product.price,
                                  :email => @product_order.email,
                                  :phone => @product_order.phone)
        end
      else
        @product = Product.find(params[:product_order][:product_id])
        if @product.nil?
          self.render_404 and return
        else
          flash[:error] = I18n.t('site.notification.order_error')
          render 'application/product_detail'
        end
      end
  end
end
