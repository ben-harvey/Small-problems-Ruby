# input: two arrays of integers
# output: a new array containing the product of every pairing of  
#   elements from input arrays
# data structures: array
# logic: Array#combination

# def multiply_all_pairs(array1, array2)
#   result = []
#   array1.each do |number1|
#     array2.each do |number2|
#       result << number1 * number2
#     end
#   end
#   result.sort
# end

def multiply_all_pairs(array1, array2)
  # array1.product(array2).map {|sub_arr| sub_arr.inject(:*)}.sort
  array1.product(array2).map {|a, b| a * b }.sort

end



p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
