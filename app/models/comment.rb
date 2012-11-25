class Comment < ActiveRecord::Base
  validates :email, :fio, :title, :body, :presence => true
  validates :email, :length => {:maximum => 100}
  validates :fio, :length => {:minimum => 5, :maximum => 100}
  validates :title, :length => {:maximum => 100}
  validates :body, :length => {:maximum => 500}

  attr_accessible :email, :fio, :title, :body, :humanizer_question_id, :humanizer_answer

  include Humanizer
  require_human_on :create

  after_create :send_email

  protected
  def send_email
    CommentMailer.comment_email(self).deliver
  end
end
