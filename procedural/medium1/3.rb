# input: an integer
# output: integer equal to the max rotation of input
# rules:    735291
#         3  52917
#         32  9175
#         321  759
#         3215  97
#         321579
# logic:
#           call rrd on all chars
#           then call rrd on that result starting at index 1
#           then call rrd on that result starting at index 2
#           ...
def rotate_array(array)
  result = array.clone
  result << result.shift
end

def rotate_rightmost_digits(digits, slice)
  digits[-slice..-1] = rotate_array(digits[-slice..-1])
  digits
end

# def max_rotation(number)
#   digits = number.to_s.chars
#   start_index = digits.size
#   loop do
#     digits = rotate_rightmost_digits(digits, start_index)
#     start_index -= 1
#     break if start_index == 0
#   end
#   digits.join.to_i
# end

# refactor to use iterator method

def max_rotation(number)
  digits = number.to_s.chars
  digits.size.downto(1) do |num|
    digits = rotate_rightmost_digits(digits, num)
  end
  digits.join.to_i
end

p max_rotation(735291) #== 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
