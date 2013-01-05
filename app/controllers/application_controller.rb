class ApplicationController < ActionController::Base
  protect_from_forgery

  MENU_INDEX = 0
  MENU_CATALOG = 1
  MENU_RESPONSE = 2
  MENU_PAYMENT = 3
  MENU_DELIVERY = 4

  #def index
  #  @menu_item = ApplicationController::MENU_INDEX
  #end

  #def catalog
  #  @menu_item = ApplicationController::MENU_CATALOG
  #  if params[:id].nil?
  #    @categories = Category._enabled._order_by_name
  #  else
  #
  #    @product = Product.find(params[:id])
  #    if @product.nil?
  #      self.render_404 and return
  #    else
  #      @product_order = ProductOrder.new({
  #          product_id: @product.id,
  #          order_status_id: OrderStatus.get_new.id,
  #          email: "",
  #          phone: "",
  #          first_name: "",
  #          last_name: "",
  #          comment: ""
  #      })
  #      render 'application/product_detail'
  #    end
  #  end
  #end
  #
  #def contact
  #  @menu_item = ApplicationController::MENU_CONTACT
  #  @comment = Response.new
  #end
  #
  #def comment_save
  #  @comment = Response.new(params[:comment])
  #  if @comment.valid?
  #    if @comment.save
  #      flash[:notice] = I18n.t('site.notification.comment_was_sended')
  #      respond_to do |format|
  #        format.html {render 'application/contact_send'}
  #      end
  #    end
  #  else
  #    render :'application/contact'
  #  end
  #end
  #
  #def order_send
  #  @product_order = ProductOrder.new(params[:product_order])
  #  if @product_order.valid?
  #    if @product_order.save
  #      flash[:notice] = I18n.t('site.notification.order_was_created',
  #                              :product => @product_order.product.name,
  #                              :price => @product_order.product.price,
  #                              :email => @product_order.email,
  #                              :phone => @product_order.phone)
  #    end
  #  else
  #    @product = Product.find(params[:product_order][:product_id])
  #    if @product.nil?
  #      self.render_404 and return
  #    else
  #      flash[:error] = I18n.t('site.notification.order_error')
  #      render 'application/product_detail'
  #    end
  #  end
  #end
  #
  #def render_404
  #  respond_to do |format|
  #    format.html { render :file => "#{Rails.root}/public/404.html", :layout => nil, :status => :not_found }
  #    format.xml { head :not_found }
  #    format.any { head :not_found }
  #  end
  #end
  #
  #def render_500
  #  respond_to do |format|
  #    format.html { render :file => "#{Rails.root}/public/500.html", :layout => nil, :status => :not_found }
  #    format.xml { head :not_found }
  #    format.any { head :not_found }
  #  end
  #end
  #
  protected
  def select_active_menu_item(item)
    @menu_item = item
  end

  private

  def retrieve_news_feed
    @news = New.order("date desc").limit(10)
  end

  def retrieve_contact
    @contact = Contact.first
  end
end
