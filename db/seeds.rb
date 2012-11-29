# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ProductStatus.delete_all

product_statuses = ProductStatus.create([
    {code: ProductStatus::CODE_EXIST, name: I18n.t('product_status.exist')},
    {code: ProductStatus::CODE_ORDER, name: I18n.t('product_status.order')}
])

Category.delete_all

categories = Category.create([
    {name: I18n.t('category.name.toys')}
])

Product.delete_all

Product.create([
    {name: I18n.t('product.name.item1'), description: I18n.t('product.description.item1'), enabled: true, price: 0, category: categories[0], category_id: categories[0].id, product_status: product_statuses[0], product_status_id: product_statuses[0].id},
    {name: I18n.t('product.name.item2'), description: I18n.t('product.description.item2'), enabled: true, price: 0, category: categories[0], category_id: categories[0].id,  product_status: product_statuses[0], product_status_id: product_statuses[0].id},
    {name: I18n.t('product.name.item3'), description: I18n.t('product.description.item3'), enabled: true, price: 0, category: categories[0], category_id: categories[0].id,  product_status: product_statuses[0], product_status_id: product_statuses[0].id},
    {name: I18n.t('product.name.item4'), description: I18n.t('product.description.item4'), enabled: true, price: 0, category: categories[0], category_id: categories[0].id,  product_status: product_statuses[0], product_status_id: product_statuses[0].id},
    {name: I18n.t('product.name.item5'), description: I18n.t('product.description.item5'), enabled: true, price: 0, category: categories[0], category_id: categories[0].id,  product_status: product_statuses[0], product_status_id: product_statuses[0].id},
    {name: I18n.t('product.name.item6'), description: I18n.t('product.description.item6'), enabled: true, price: 0, category: categories[0], category_id: categories[0].id,  product_status: product_statuses[0], product_status_id: product_statuses[0].id},
    {name: I18n.t('product.name.item7'), description: I18n.t('product.description.item7'), enabled: true, price: 0, category: categories[0], category_id: categories[0].id,  product_status: product_statuses[0], product_status_id: product_statuses[0].id},
    {name: I18n.t('product.name.item8'), description: I18n.t('product.description.item8'), enabled: true, price: 0, category: categories[0], category_id: categories[0].id,  product_status: product_statuses[0], product_status_id: product_statuses[0].id},
    {name: I18n.t('product.name.item9'), description: I18n.t('product.description.item9'), enabled: true, price: 0, category: categories[0], category_id: categories[0].id,  product_status: product_statuses[0], product_status_id: product_statuses[0].id},
    {name: I18n.t('product.name.item10'), description: I18n.t('product.description.item10'), enabled: true, price: 0, category: categories[0], category_id: categories[0].id,  product_status: product_statuses[0], product_status_id: product_statuses[0].id},
    {name: I18n.t('product.name.item11'), description: I18n.t('product.description.item11'), enabled: true, price: 0, category: categories[0], category_id: categories[0].id,  product_status: product_statuses[0], product_status_id: product_statuses[0].id}
])

Contact.delete_all

Contact.create({:email => "darya.toys@gmail.com", :phone1 => "+380 50 190 5466"})
