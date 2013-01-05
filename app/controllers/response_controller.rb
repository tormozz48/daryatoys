class ResponseController < ApplicationController
  before_filter :retrieve_news_feed
  before_filter :retrieve_contact

  def new
    select_active_menu_item(MENU_RESPONSE)
    @response = Response.new
  end

  def create
    select_active_menu_item(MENU_RESPONSE)
    @response = Response.new(params[:response])
    if @response.valid?
      if @response.save
        flash[:notice] = I18n.t('site.notification.comment_was_sended')
        respond_to do |format|
          format.html {render 'response/send'}
        end
      end
    else
      render 'response/new'
    end
  end

end
