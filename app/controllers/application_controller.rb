class ApplicationController < ActionController::Base
  protect_from_forgery

  MENU_INDEX = 0
  MENU_CATALOG = 1
  MENU_CONTACT = 2

  def index
    @menu_item = ApplicationController::MENU_INDEX
  end

  def catalog
    @menu_item = ApplicationController::MENU_CATALOG
  end

  def contact
    @menu_item = ApplicationController::MENU_CONTACT
    @comment = Comment.new
  end

  def comment_save

  end
end
