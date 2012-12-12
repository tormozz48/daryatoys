ProductStatus.delete_all
product_statuses = ProductStatus.create([
    {code: ProductStatus::CODE_EXIST, name: I18n.t('product_status.exist')},
    {code: ProductStatus::CODE_ORDER, name: I18n.t('product_status.order')}
])


OrderStatus.delete_all
order_statuses = OrderStatus.create([
    {code: OrderStatus::NEW, name: I18n.t('order_status.new')},
    {code: OrderStatus::PAYED, name: I18n.t('order_status.payed')},
    {code: OrderStatus::SENT, name: I18n.t('order_status.sent')},
    {code: OrderStatus::COMPLETED, name: I18n.t('order_status.completed')},
    {code: OrderStatus::CANCELED, name: I18n.t('order_status.canceled')}
])

#Contact.delete_all
#Contact.create({:email => "darya.toys@gmail.com", :phone1 => "+380 50 190 5466"})

