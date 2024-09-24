=begin
challenge: U3 - ActiveRecord
creater: Luping (Leopold) Xing
create data: 2024-09-23
=end

require_relative 'ar.rb'

# Products with a stock quantity above 40
# Increment the stock quantity by one for each product with stock greater than 40
Product.where("stock_quantity > 40").find_each do |product|
  product.stock_quantity += 1

  # Save the product and confirm the stock quantity update, or report errors
  if product.save
    puts "Product #{product.name} stock quantity updated successfully."
  else
    puts "Failed to update product #{product.name} stock quantity. #{product.errors.full_messages}"
  end
end
