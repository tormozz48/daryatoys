# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ProductStatus.delete_all

ProductStatus.create([
    {code: ProductStatus::CODE_EXIST, name: I18n.t('product_status.exist')},
    {code: ProductStatus::CODE_ORDER, name: I18n.t('product_status.order')}
])

Category.delete_all

Category.create([
    {name: I18n.t('category.name.toys')}
])
