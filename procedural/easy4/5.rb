# Input: an integer > 1
# Output:  an integer representing the sum of all multiples of 
#   3 and 5 between 1 and the input 

# Test cases:

# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168

# Data structure: integer

# Logic: select from range from 1 to input if n % 3 or 5 == 0
#         inject resulting array

# def multisum(number)
#   (1..number).select { |n| n % 3 == 0 || n % 5 == 0 }.inject(:+)
# end

def multisum(number)
  array_counter = 1
  to_sum = []
  loop do
    array_counter += 1
    counter_true = (array_counter % 3 == 0 || array_counter % 5 == 0)
    to_sum << array_counter if counter_true
    break if array_counter == number
  end

  sum_counter = 0
  total = 0
  loop do 
    total += to_sum[sum_counter]
    sum_counter += 1 
    break if sum_counter == to_sum.size 
  end
  total
end



puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
