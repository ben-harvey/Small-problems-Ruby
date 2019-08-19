# check pos or neg
# if neg * - 1
# check odd with modulo

#  def is_odd?(integer)
#   integer *= -1 if integer > 0
#   if integer % 2 != 0
#     true
#   else
#     false
#   end
# end

def is_odd?(integer)
  integer % 2 == 1
end


# 7 # absolute value = 7
# -9 # absolute value = 9

# remainder =1

# 7 divided by 2 has a remainder of 1
# 6 divided by 2 has a remainder of 0

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)

