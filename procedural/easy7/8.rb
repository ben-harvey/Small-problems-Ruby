# input: two arrays
# output: a new array containing the product of the elements 
#   at the same indices in input arrays
# data structure: arrays
# logic: 


# def multiply_list(array1, array2)
#   result = []
#   array1.each_with_index do |integer, idx|
#     result << integer * array2[idx]
#   end
#   result
# end

def multiply_list(array1, array2)
    # c = []
    array1.zip(array2).map {|x, y| x * y}
    # c
end

p multiply_list([3, 5, 7], [9, 10, 11])#  == [27, 50, 77]
