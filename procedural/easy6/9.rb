# Input: an Array and a search value
# Output: a boolean representing whether input array contains search 
#         value
# Rules:  Don't use Array#include
# Data Structures: Array, Integer, boolean
# Logic: search array with Array#find

def include?(array, value)
  result = array.find(-> {false}) {|element| element == value} 
  return true if result == nil
  !!result
end

# refactor to use Array#find_index

# def include?(array, value)
#   !!array.find_index(value)
# end

# def include?(arr, num)
#   arr == (arr | [num])
# end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false