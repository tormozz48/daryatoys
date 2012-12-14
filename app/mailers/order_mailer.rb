class OrderMailer < ActionMailer::Base
  default from: "from@example.com"

  def order_email(product_order)
    @contact = Contact.first
    @product_order = product_order
    mail(
        :from => @product_order.email,
        :to => @contact.email,
        :subject => I18n.t('site.email_subject_order', :site => t('site.title'))
    )
  end
end
