# input: a 2d array with sub-array containing 2 elements, a string rep. fruit and an integer rep. count
# output: an array containing the correct number of fruit
# ds: array
# logic: create a result array
#       iterate through input array
#       add string to result count number of times

# def buy_fruit(array)
#   result = []
#   array.each do |subarray|
#     subarray[1].times do
#       result << subarray[0]
#     end
#   end
#   result
# end

def buy_fruit(array)
  nested_list = array.map { |subarray| [subarray[0]] * subarray[1] }
  nested_list.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
