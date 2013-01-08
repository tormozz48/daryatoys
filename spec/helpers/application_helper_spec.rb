require 'spec_helper'

describe ApplicationHelper do

  fixtures :contacts

  it "should select main page menu item" do
    @menu_item = ApplicationController::MENU_INDEX
    is_index_selected.should == true
    is_catalog_selected.should == false
    is_contact_selected.should == false
    is_delivery_selected.should == false
    is_payment_selected.should == false
  end

  it "should select catalog page menu item" do
    @menu_item = ApplicationController::MENU_CATALOG
    is_catalog_selected.should == true
    is_index_selected.should == false
    is_contact_selected.should == false
    is_delivery_selected.should == false
    is_payment_selected.should == false
  end

  it "should select response page menu item" do
    @menu_item = ApplicationController::MENU_RESPONSE
    is_contact_selected.should == true
    is_index_selected.should == false
    is_catalog_selected.should == false
    is_delivery_selected.should == false
    is_payment_selected.should == false
  end

  it "should select delivery page menu item" do
    @menu_item = ApplicationController::MENU_DELIVERY
    is_delivery_selected.should == true
    is_index_selected.should == false
    is_catalog_selected.should == false
    is_contact_selected.should == false
    is_payment_selected.should == false
  end

  it "should select payment page menu item" do
    @menu_item = ApplicationController::MENU_PAYMENT
    is_payment_selected.should == true
    is_index_selected.should == false
    is_catalog_selected.should == false
    is_contact_selected.should == false
    is_delivery_selected.should == false
  end

  it "should return email of contact" do
    contact = contacts(:one)
    get_email(contact).should == content_tag(:div,
      content_tag(:span, I18n.t('admin.contact.field.email')+": ", :class => "nav-header nav-header-custom") +
      content_tag(:span, contact.email, :class => "contact-item-value")) if !contact.email.blank?
  end

  it "should return phone1 of contact" do
    contact = contacts(:one)
    get_phone1(contact).should == content_tag(:div,
      content_tag(:span, I18n.t('admin.contact.field.phone1')+ ": ", :class => "nav-header nav-header-custom") +
      content_tag(:span, contact.phone1, :class => "contact-item-value")) if !contact.phone1.blank?
  end

  it "should return phone2 of contact" do
    contact = contacts(:one)
    get_phone2(contact).should == content_tag(:div,
      content_tag(:span, I18n.t('admin.contact.field.phone1')+ ": ", :class => "nav-header nav-header-custom") +
      content_tag(:span, contact.phone2, :class => "contact-item-value")) if !contact.phone2.blank?
  end

  it "should return area of contact" do
    contact = contacts(:one)
    get_area(contact).should == content_tag(:div,
      content_tag(:span, I18n.t('admin.contact.field.area')+ ": ", :class => "nav-header nav-header-custom") +
      content_tag(:span, contact.area, :class => "contact-item-value")) if !contact.area.blank?
  end

  it "should return skype of contact" do
    contact = contacts(:one)
    get_skype(contact).should == content_tag(:div,
      content_tag(:span, I18n.t('admin.contact.field.skype')+ ": ", :class => "nav-header nav-header-custom") +
      content_tag(:span, contact.skype, :class => "contact-item-value")) if !contact.skype.blank?
  end
end
