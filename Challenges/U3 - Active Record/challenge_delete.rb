=begin
challenge: U3 - ActiveRecord
creater: Luping (Leopold) Xing
create data: 2024-09-23
=end

require_relative 'ar.rb'

# delete newly created product samsung

product2 = Product.find_by(name: 'Product 2')

# if found, then delete
if product2
  product2.destroy
  puts 'Product 2 has been successfully deleted.'
else
  puts 'Product 2 not found.'
end