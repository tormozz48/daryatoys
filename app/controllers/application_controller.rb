class ApplicationController < ActionController::Base
  before_filter :retrieve_contact
  protect_from_forgery

  MENU_INDEX = 0
  MENU_CATALOG = 1
  MENU_CONTACT = 2

  def index
    @menu_item = ApplicationController::MENU_INDEX
  end

  def catalog
    @menu_item = ApplicationController::MENU_CATALOG
    if params[:id].nil?
      @categories = Category._enabled._order_by_name
    else
      if !Product.select("id").include?(params[:id])
        self.render_404 and return
      end

      @product = Product.find(params[:id])
      if @product.nil?
        self.render_404 and return
      else
        render 'application/product_detail'
      end
    end
  end

  def contact
    @menu_item = ApplicationController::MENU_CONTACT
    @comment = Comment.new
  end

  def comment_save
    @comment = Comment.new(params[:comment])
    if @comment.valid?
      @comment.save
      flash[:notice] = I18n.t('site.notification.comment_was_sended')
      respond_to do |format|
        format.html {render 'application/contact_send'}
      end
    else
      render :'application/contact'
    end
  end

  def render_404
    respond_to do |format|
      format.html { render :file => "#{Rails.root}/public/404.html", :layout => nil, :status => :not_found }
      format.xml { head :not_found }
      format.any { head :not_found }
    end
  end

  def render_500
    respond_to do |format|
      format.html { render :file => "#{Rails.root}/public/500.html", :layout => nil, :status => :not_found }
      format.xml { head :not_found }
      format.any { head :not_found }
    end
  end

  private
  def retrieve_contact
    @contact = Contact.first
  end


end
