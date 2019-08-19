# input: a positive integer and an integer argument n
# output: a new integer equal to input with the nth digit from the end of input moved to the end
# rules: n is positive
#       ok to use prev. methods

# logic: convert to string
#       slice off n characters from end
#       rotate slice
#       reattach slice

def rotate_string(string)
  string[1..-1] + string[0]
end

def rotate_array(array)
  result = array.clone
  result << result.shift
end


# def rotate_rightmost_digits(number, slice)
#   string_number = number.to_s
#   to_rotate = string_number[-slice..-1]
#   rotated = rotate_string(to_rotate)
#   (string_number[0..(-slice - 1)] + rotated).to_i
# end

def rotate_rightmost_digits(number, slice)
  digits = number.to_s.chars
  digits[-slice..-1] = rotate_array(digits[-slice..-1])
  digits.join.to_i
end


rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) #== 752913
rotate_rightmost_digits(735291, 6) == 352917