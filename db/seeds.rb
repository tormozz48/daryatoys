# ProductStatus.delete_all
# product_statuses = ProductStatus.create([
#     {code: ProductStatus::CODE_EXIST, name: I18n.t('product_status.exist')},
#     {code: ProductStatus::CODE_ORDER, name: I18n.t('product_status.order')}
# ])


# OrderStatus.delete_all
# order_statuses = OrderStatus.create([
#     {code: OrderStatus::NEW, name: I18n.t('order_status.new')},
#     {code: OrderStatus::PAYED, name: I18n.t('order_status.payed')},
#     {code: OrderStatus::SENT, name: I18n.t('order_status.sent')},
#     {code: OrderStatus::COMPLETED, name: I18n.t('order_status.completed')},
#     {code: OrderStatus::CANCELED, name: I18n.t('order_status.canceled')}
# ])

#Contact.delete_all
#Contact.create({:email => "darya.toys@gmail.com", :phone1 => "+380 50 190 5466"})

product_status_exist = ProductStatus.find_by_code(ProductStatus::CODE_EXIST)
product_status_exist.translations.create(:name => I18n.t('product_status.exist', :locale => :uk), :locale => 'uk')

product_status_order = ProductStatus.find_by_code(ProductStatus::CODE_ORDER)
product_status_order.translations.create(:name => I18n.t('product_status.order', :locale => :uk), :locale => 'uk')