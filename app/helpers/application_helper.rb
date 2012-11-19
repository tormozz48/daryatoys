module ApplicationHelper
  def is_index_selected
    return @menu_item == ApplicationController::MENU_INDEX
  end

  def is_catalog_selected
    return @menu_item == ApplicationController::MENU_CATALOG
  end

  def is_contact_selected
    return @menu_item == ApplicationController::MENU_CONTACT
  end
end
