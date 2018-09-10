# 1. If you're sitting next to the same person you sat next
#    to yesterday, go sit next to someone else.
# I am one of the knights that say ne!
# 2. A business called “The Company” created a new phone called 
#    the companyPhone that needs packing to send away for sale. 
phone_dim= {"width" => 5, "length" => 7.4, "depth"=>4}
phone_volume =(phone_dim["width"] * phone_dim["length"] * phone_dim["depth"])
    puts "the volume of the phone packaging #{phone_volume.to_i}cm"

box_dim= {"width" => 32, "length" => 43, "depth"=>22.1}
box_volume= (box_dim["width"] * box_dim["length"] * box_dim["depth"])
    puts "the volume of the phone packaging #{box_volume.to_i}cm"
number_phones= (box_volume / phone_volume)
    puts "you can fit #{number_phones.to_i}"

# a better solution
one=(box_dim["width"]/phone_dim["width"]).to_i
puts one
two=(box_dim["length"]/phone_dim["length"]).to_i
puts two
thr=(box_dim["depth"]/phone_dim["depth"]).to_i
puts thr
puts (one * two * thr).to_i




#   The companyPhone in its pretty new packaging 
#    (rectangular prism) measures as follows: 
#       width: 5cm
#       length: 7.4cm 
#       depth: 4cm 
#
#    The Company need to know how many of the phones in
#    the new packaging can fit into a box that measures:
#       width: 32cm
#       length: 43cm 
#       height: 22.1cm 
#
#    Think about writing some pseudo code first that steps 
#    through all the commands you need to write. 
#
#    Keep it as simple as you can.

phone = [5, 7.4, 4]
box = [32, 43, 22.1]

max_phones = 0
phone.permutation do |orient|
    print orient
    puts
    num_phones = (box[0] / orient[0]).to_i * (box[1] / orient[1]).to_i * (box[2] / orient[2]).to_i
    max_phones = num_phones if num_phones > max_phones
end

puts max_phones
