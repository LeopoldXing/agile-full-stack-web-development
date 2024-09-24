=begin
challenge: U3 - ActiveRecord
creater: Luping (Leopold) Xing
create data: 2024-09-23
=end

require_relative 'ar.rb'

# Initialize a new Product object with specified attributes
product1 = Product.new(name: 'Product 1', price: 1299, description: "iphone", stock_quantity: 100)
# Attempt to save Product 1 and print success message or errors
if product1.save
  puts 'Product 1 saved successfully.'
else
  puts product1.errors.full_messages
end

# Create and save Product 2 directly with given attributes
product2 = Product.create(name: 'Product 2', price: 999, description: "Samsung", stock_quantity: 80)
# Check if Product 2 has been saved successfully and print appropriate message
if product2.persisted?
  puts 'Product 2 saved successfully.'
else
  puts product2.errors.full_messages
end

# Find an existing Product 3 or create it with additional attributes
product3 = Product.find_or_create_by(name: 'Product 3') do |product|
  product.price = 699
  product.description = "Xiaomi 14"
  product.stock_quantity = 30
end

# Verify if Product 3 has been saved and print a success message or errors
if product3.persisted?
  puts 'Product 3 saved successfully.'
else
  puts product3.errors.full_messages
end

# Create a product without the required description attribute
product4 = Product.new(name: 'HTC', price: 99, stock_quantity: 1)
# Try to save Product 4 and print the result
if product4.save
  puts 'Product 4 saved successfully.'
else
  puts product4.errors.full_messages # Detail each error message
  # Uncomment to loop through and print each error message individually
  # product.errors.full_messages.each do |message|
  #   puts message
  # end
end
