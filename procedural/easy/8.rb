# Input: an array containing integers
  # - never empty
  # - only positive integers
# Output : an integer which is the average of all integers in the array
# Test cases:   What if only one integer in array? 
#               What if all numbers the same?

# Data structure: keep as array, use number operations.
                  # Array#sum ?  no
                  # Array#average ? no

# Algorithm: "sum numbers in array", then divide by array.size

# Abstractions:  sum numbers in array --> method get_sum
    # set counter variable 'count'
    # iterate through array with each
    # count += value at given array index
    # return count

# def get_sum(array)
#   count = 0
#   array.each {|num| count += num }
#   count
# end

# def average(array)
#   get_sum(array) / array.size
# end

# p average([9, 47, 23, 95, 16, 52])


# puts average([7, 7, 7, 7]) == 7
# puts average([4]) == 4
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# refactor to use Enumerable#reduce. condense to one method


def average(array)
  # array.map! {|n| n.to_f}  # also written
  array.map!(&:to_f)
  array.reduce(:+) / array.size  # also written 
  # array.reduce {|sum, num| sum + num} / array.count
  
end

# p get_sum([9, 47, 23, 95, 16, 52])


puts average([7, 7, 7, 8]) 
# puts average([4]) == 4
puts average([1, 5, 87, 45, 8, 8]) 
# puts average([9, 47, 23, 95, 16, 52]) == 40
