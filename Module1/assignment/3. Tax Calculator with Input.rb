=begin
Name: Luping Xing
Course: Agile Full Stack Web Development
=end

print "Please enter the subtotal: $"
sub_total = gets.chomp.to_f

GST_RATE = 0.05
PST_RATE = 0.07

gst_amount = sub_total * GST_RATE
pst_amount = sub_total * PST_RATE

grand_total = sub_total + gst_amount + pst_amount

puts "Subtotal: $#{sub_total.round(2)}"
puts "PST: $#{pst_amount.round(2)} - #{(PST_RATE * 100).to_i}%"
puts "GST: $#{gst_amount.round(2)} - #{(GST_RATE * 100).to_i}%"
puts "Grand Total: $#{grand_total.round(2)}"

if grand_total <= 5.00
  puts "Pocket Change"
elsif grand_total < 20.00
  puts "Wallet Time"
else
  puts "Charge It!"
end