class CommentMailer < ActionMailer::Base
  default from: "from@example.com"

  def comment_email(comment)
    @contact = Contact.first
    @comment = comment
    mail(
        :from => @comment.email,
        :to => @contact.email,
        :subject => I18n.t('site.email_subject', :site => t('site.title'))
    )
  end
end
