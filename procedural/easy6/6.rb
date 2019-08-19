# Input: two Arrays
# Output: a new array that contains only unique elements from input Arrays
# Data Structures:  Arrays
# Rules: 
# Logic:  add two inner Arrays
#         call uniq on result

# def merge(array_1, array_2)
#   (array_1 + array_2).uniq
# end

# refactor to use Array#|

def merge(array_1, array_2)
  array_1 | array_2
end


p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]