# Input: an Array
# Output: a new array containing two nested arrays which contain 
#         first half and second half of input array
# Rules:  if length of input is odd, middle element goes in the first
#         result array
# Data Structures: Array
# Logic:  check length of input and round up
#         use rounded length in Enumerable#each_slice

# def halvsies(array)
#   length = (array.size.to_f / 2).round
#   length = 1 if length == 0
#   result = array.each_slice(length).to_a
#   result << [] until result.size >= 2
#   result
# end

# refactor using Array#slice and Numeric#ceil

def halvsies(array)
  first_half = array.slice(0, (array.size / 2.0).ceil)
  second_half = array.slice(first_half.size, array.size - first_half.size)
  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

# F.E. -----------
# (3 / 2).ceil = 1
# (3 / 2.0).ceil = 2
