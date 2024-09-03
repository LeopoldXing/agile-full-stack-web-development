=begin
Name: Luping Xing
Course: Agile Full Stack Web Development
=end

sub_total = 5.00

GST_RATE = 0.05
PST_RATE = 0.07

gst_amount = sub_total * GST_RATE
pst_amount = sub_total * PST_RATE

grand_total = sub_total + gst_amount + pst_amount

puts "Subtotal: $#{sub_total}"
puts "PST: $#{pst_amount.round(2)} - #{(PST_RATE * 100).to_i}%"
puts "GST: $#{gst_amount.round(2)} - #{(GST_RATE * 100).to_i}%"
puts "Grand Total: $#{grand_total.round(2)}"
