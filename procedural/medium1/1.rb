# input: an array
# output: a new array with first element of input shifted to last position
# rules: input not altered
# ds: array
# logic: copy original array
#       remove first element
#       add to end of array

# def rotate_array(array)
#   result = array.clone
#   result << result.shift
# end

# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]                 # => true


# FE ----------------------------------------

# for strings

def rotate_string(string)
  string[1..-1] + string[0]
end

# p rotate_string('abc') == 'bca'

# for integers

def rotate_integer(integer) # breaks with leading zeros
  rotate_string(integer.to_s).to_i
end

p rotate_integer(123)