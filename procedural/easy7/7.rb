# input: an array of integers
# output: a string displaying the multiplicateaverage of input
#  to 3 decimal places
# data structure: integers, string
# logic: 
#   1) reduce the array
#   2) divide by the array size

def show_multiplicative_average(integers)
  result = integers.reduce(:*) / integers.size
  format("%.3f", result)
end

p show_multiplicative_average([3, 5])
# The result is 7.500

# show_multiplicative_average([6])
# The result is 6.000

# show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667


# FE

# You get integer division so no fractional part in result