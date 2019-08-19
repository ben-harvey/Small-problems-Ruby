# input: an index n of a fibonacci number
# output: that fibonacci number
# rules: don't use recursion
# ds: integer
# logic:  return 1 for 1 and 2
#         3 = 1 + 1
#         initialize array with 1, 1
#         n - 2 times, add the previous two numbers and add that to the             array
#         return the last value of the array

def fibonacci(index)
  fibs = [1, 1]
  return fibs[index - 1] if index <= 2
  (index - 2).times do
    fibs << (fibs[-2] + fibs[-1])
  end
  fibs[-1]
end

p fibonacci(5)
 p fibonacci(20) #== 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
