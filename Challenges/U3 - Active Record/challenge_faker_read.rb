=begin
Challenge: U3 - ActiveRecord
Creator: Luping (Leopold) Xing
Creation Date: 2024-09-23
=end

require 'faker'
require_relative 'ar.rb'

# Fetch all categories with their associated products preloaded
categories = Category.includes(:products).all

# Iterate display the required information
categories.each do |category|
  puts "Category: #{category.name}"
  if category.products.any?
    category.products.each do |product|
      puts "  Product Name: #{product.name}, Price: $#{product.price}"
    end
  else
    puts "  No products found in this category."
  end
  puts "\n"
end
