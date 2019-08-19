# Input: an array of numbers
# Output: a new array with same size as input array
#           -each element is running total of sum of input array
# Data structure: Array, array

# Rules: first element in output    == first element in input
#           [2]                           [2, 5, 13]
#         second element in output  == output[0] + input[1]
#           [2, 7]                        [2, 5, 13]
#         output[2]                 == output[1] + input[2]
#           [2, 7, 20]                    [2, 5, 13]
#           output.size == input.size --> break

# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

# def running_total(input_array)
#   output_array = []
#   return output_array if input_array.empty?
#   output_array[0] = input_array[0]
#   return output_array if input_array.size == 1
#   input_counter = 1
#   output_counter = 0
#   loop do
#     output_array[input_counter] = output_array[output_counter] + input_array[input_counter]                       
#     break if output_array.size == input_array.size
#     input_counter += 1
#     output_counter +=1
#   end
#   p output_array
#   output_array
# end

# def running_total(array)
#   sum = 0
#   array.each_with_object([]) { |value, new_array| new_array << sum += value}
# end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []