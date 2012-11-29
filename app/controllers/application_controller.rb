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
    if params[:id].nil?
      @menu_item = ApplicationController::MENU_CATALOG
      @categories = Category._enabled._order_by_name
    else
      @product = Product.find(params[:id])
      render 'application/product_detail'
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

  private
  def retrieve_contact
    @contact = Contact.first
  end
end
