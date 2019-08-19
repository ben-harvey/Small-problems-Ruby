# input: an Array of integers
# output: an integer representing the sum of sums
# rules: Array always contains at least one integer
# data structures: integer

# logic:  set a supersum variable = 0
#         for each element in the array, add it to all previous numbers
#         then add that result to the supersum
#         use inject with each_with_index


def sum_of_sums(array)
  supersum = 0
  array.each_with_index do |_, index|
    supersum += array[0, index + 1].inject(:+)
  end
  supersum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35