# # Input: an Array
# # Output: a new Array containing elements with odd numbered indexes from 
# #   the original Array
# # Data structure: Array

# # Logic:  check if Array index is odd. Each with object


# def oddities(array)
#   new_array = []
#   array.each_with_index do |obj, idx|
#     new_array << obj if idx.even?
#   end
#   new_array
# end


# def oddities(array)
#   new_array = []
#   array.each_with_index do |obj, idx|
#     new_array << obj if idx.odd?
#   end
#   new_array


# def oddities(array)
#   counter = 1
#   new_array = []
#   loop do
#     break if counter >= array.size
#     new_array << array[counter]
#     counter += 2
#    end
#   p new_array
# end

def oddities(array)
  new_array = []
  index_range = (1..array.size-1)
  for n in index_range do 
    new_array << array[n] if n.odd?
  end
  new_array
end

# Test cases:

# p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# p oddities(['abc', 'def']) == ['abc']
# p oddities([123]) == [123]
# p oddities([]) == []

p oddities([2, 3, 4, 5, 6]) == [3, 5] 
p oddities(['abc', 'def']) == ['def']
p oddities([123]) == []
p oddities([]) == []
