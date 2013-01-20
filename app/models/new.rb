class New < ActiveRecord::Base
  translates :title, :body

  validates :date, :title, :body, :presence => true
  validates :title, :length => {:minimum => 5, :maximum => 100}
  validates :body, :length => {:maximum => 255}

  attr_accessible :body, :date, :title
end
