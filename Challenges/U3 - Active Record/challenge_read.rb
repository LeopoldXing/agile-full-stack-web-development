=begin
Challenge: U3 - ActiveRecord
Creator: Luping (Leopold) Xing
Creation Date: 2024-09-23
=end

require_relative 'ar.rb'

# Retrieve the first product using the Product class
first_product = Product.first

# Display the attributes of the retrieved Product object
puts first_product.inspect

# Output the list of column names in the products table
puts Product.column_names
# Noting the presence of a category_id column suggests a relationship with the categories table.

# Compute and print the total count of products
number_of_products = Product.count
puts "There are #{number_of_products} in the products table."

# Retrieve and print names of all products priced over $10 starting with 'C'
products_above_10_start_with_C = Product.where("price > 10").where("name LIKE 'C%'").pluck(:name)
puts "The names of products above $10 and names that begin with the letter C are: \n#{products_above_10_start_with_C.join("\n")}"

# Count and print the number of products with a stock quantity less than 5
products_with_low_stock_number = Product.where("stock_quantity < 5").count
puts "There are #{products_with_low_stock_number} products with a low stock quantity."

#---------

# Retrieve the first product and print the category name using the 'belongs to' association
first_product = Product.first
puts "Category Name: #{first_product.category.name}"

# Use the associated category to build and persist a new product directly
new_product = first_product.category.products.build(
  name: 'Vivo X100 Ultra',
  description: 'Vivo newest smart phone',
  price: 899,
  stock_quantity: 1
)

if new_product.save
  puts 'Vivo X100 Ultra created successfully.'
else
  puts 'Product with category not created. Errors: ' + new_product.errors.full_messages.join(', ')
end

# Use the associated category to locate all products priced over $10
products_price_over_10 = first_product.category.products.where("price > 10").pluck(:name)
puts "The names of all products in the same category priced over $10 are: \n#{products_price_over_10.join("\n")}"
