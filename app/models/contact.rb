class Contact < ActiveRecord::Base
  validates :email, :phone1, :presence => true
  validates :email, :length => {:minimum => 5, :maximum => 100}
  validates :phone1, :phone2, :length=> {:maximum => 20}
  validates :area, :length => {:maximum => 200}
  validates :skype, :length => {:maximum => 50}

  attr_accessible :id, :email, :phone1, :phone2, :area, :skype

  def self.get_contact
    return Contact.first
  end
end
