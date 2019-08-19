# input: an index n of a fibonacci number
# output: the last digit of that fibonacci number
# rules: don't use recursion
# ds: integer
# logic:  return 1 for 1 and 2
#         3 = 1 + 1
#         initialize array with 1, 1
#         n - 2 times, add the previous two numbers and add that to the             array
#         get last value of the array
          # convert to string and return last character to integer

# def fibonacci_last(index)
#   fibs = [1, 1]
#   return fibs[index - 1] if index <= 2
#   (index - 2).times do
#     fibs << (fibs[-2] + fibs[-1])
#   end
#   fibs[-1].to_s[-1].to_i
# end

def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
    binding.pry
  end

  last_2.last
end

p fibonacci_last(7)        # -> 0  (the 15th Fibonacci number is 610)
# fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
#  fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789) # -> 4