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

  def get_email(contact)
    return content_tag(:div,
             content_tag(:span, I18n.t('admin.contact.field.email')) + ": " +
             content_tag(:span, contact.email)) if !contact.email.blank?
  end

  def get_phone1(contact)
    return content_tag(:div,
             content_tag(:span, I18n.t('admin.contact.field.phone1')) + ": " +
             content_tag(:span, contact.phone1)) if !contact.phone1.blank?
  end

  def get_phone2(contact)
    return content_tag(:div,
             content_tag(:span, I18n.t('admin.contact.field.phone2')) + ": " +
             content_tag(:span, contact.phone2)) if !contact.phone2.blank?
  end

  def get_area(contact)
    return content_tag(:div,
             content_tag(:span, I18n.t('admin.contact.field.area')) + ": " +
             content_tag(:span, contact.area)) if !contact.area.blank?
  end

  def get_skype(contact)
    return content_tag(:div,
             content_tag(:span, I18n.t('admin.contact.field.skype')) + ": " +
             content_tag(:span, contact.skype)) if !contact.skype.blank?
  end

  def get_field_class(model, field)
      if model.errors[field].present?
        return "control-group error"
      elsif model.errors.any?
        return "control-group success"
      else
        return "control-group"
     end
  end
end
