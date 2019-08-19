# Input: an integer representing the length of a digit of the
#   Fibonacci series
# Output: an integer representing the index of the first Fibonacci
#   number with the length given as Input
# Data structures: Integers, Array
# Rules:  Fibonacci: each number is result of sum of previous
#           two numbers
#           eg (1, 1, 2, 3, 5, 8, 13, 21, ...)
#         Index starts at 1
          # Argument >= 2


# Logic:  -calculate the fibonacci sequence in such a way
#         that the calulation stops when the desired length
#         is reached
#         -return the index by incrementing an interator
# require 'pry'

# def find_fibonacci_index_by_length(length)    
#   index = 2
#   first = 1
#   second = 1
#   third = 0
#   loop do 
#     third =  first + second
#     first = second
#     second = third
#     index += 1
#     break if third.to_s.size == length
#   end 
#   index   
# end

# refactor with Array and Array#inject

require 'pry'

def find_fibonacci_index_by_length(length)    
  fib_array = [0, 1, 1,]
  index = 3
  until fib_array[index - 1].to_s.size == length
    fib_array[index] = fib_array[index-2, index-1].inject(:+)
    index += 1
  end
  index - 1 
end

# moral_of_story: sometimes a shorter solution is really
# hard to read!

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847