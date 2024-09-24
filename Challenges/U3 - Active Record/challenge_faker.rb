=begin
Challenge: U3 - ActiveRecord
Creator: Luping (Leopold) Xing
Creation Date: 2024-09-23
=end

require 'faker'
require_relative 'ar.rb'

# user faker to generate 10 new categories and 10 products for each category
10.times do
  # category
  category = Category.new(name: Faker::Commerce.department)
  puts "category name:#{category.name}"
  # save category
  category.save

  # generate 10 products for each category
  10.times do
    product = Product.new(
      name: Faker::Commerce.product_name,
      description: Faker::Lorem.sentence,
      price: Faker::Commerce.price(range: 0.01..100.0),
      stock_quantity: Faker::Number.between(from: 1, to: 100),
      category_id: category.id)

    puts "product name:#{product.name}"
    # save product
    product.save
  end
end
