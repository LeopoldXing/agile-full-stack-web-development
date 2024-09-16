=begin
Name: Luping Xing
Course: Agile Full Stack Web Development
=end

print "Please enter the subtotal: $"
# get user input
sub_total = gets.chomp.to_f

# set tax rate value
GOODS_AND_SERVICES_TAX_RATE = 0.05
PROVINCIAL_SALES_TAX_RATE = 0.07

# calculate the tax
gst_amount = sub_total * GOODS_AND_SERVICES_TAX_RATE
pst_amount = sub_total * PROVINCIAL_SALES_TAX_RATE

# calculate grand total amount
grand_total = sub_total + gst_amount + pst_amount

# print out the result
puts "Subtotal: $#{sub_total.round(2)}"
puts "PST: $#{pst_amount.round(2)} - #{(PROVINCIAL_SALES_TAX_RATE * 100).to_i}%"
puts "GST: $#{gst_amount.round(2)} - #{(GOODS_AND_SERVICES_TAX_RATE * 100).to_i}%"
puts "Grand Total: $#{grand_total.round(2)}"

# condition determination
if grand_total <= 5.00
  puts "Pocket Change"
elsif grand_total < 20.00
  puts "Wallet Time"
else
  puts "Charge It!"
end