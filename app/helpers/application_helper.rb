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

  def get_email
    return content_tag(:div,
             content_tag(:span, I18n.t('admin.contact.field.email')) + ": " +
             content_tag(:span, Contact.first.email)) if !Contact.first.email.blank?
  end

  def get_phone1
    return content_tag(:div,
             content_tag(:span, I18n.t('admin.contact.field.phone1')) + ": " +
             content_tag(:span, Contact.first.phone1)) if !Contact.first.phone1.blank?
  end

  def get_phone2
    return content_tag(:div,
             content_tag(:span, I18n.t('admin.contact.field.phone2')) + ": " +
             content_tag(:span, Contact.first.phone2)) if !Contact.first.phone2.blank?
  end

  def get_area
    return content_tag(:div,
             content_tag(:span, I18n.t('admin.contact.field.area')) + ": " +
             content_tag(:span, Contact.first.area)) if !Contact.first.area.blank?
  end

  def get_skype
    return content_tag(:div,
             content_tag(:span, I18n.t('admin.contact.field.skype')) + ": " +
             content_tag(:span, Contact.first.skype)) if !Contact.first.skype.blank?
  end
end
