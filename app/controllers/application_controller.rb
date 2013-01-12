class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  MENU_INDEX = 0
  MENU_CATALOG = 1
  MENU_RESPONSE = 2
  MENU_PAYMENT = 3
  MENU_DELIVERY = 4

  def default_url_options(options={})
    { :locale => I18n.locale }
  end

  def change_locale
    redirect_to root_path
  end  

  def render_404
    respond_to do |format|
      format.html { render :file => "#{Rails.root}/public/404.html",
                           :layout => nil, :status => :not_found }
    end
  end

  def render_500
    respond_to do |format|
      format.html { render :file => "#{Rails.root}/public/500.html",
                           :layout => nil, :status => :not_found }
    end
  end

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
