class DeliveryController < ApplicationController
  before_filter :retrieve_news_feed
  before_filter :retrieve_contact

  def index
    select_active_menu_item(MENU_DELIVERY)
    @contact = Contact.get_contact
  end
end
