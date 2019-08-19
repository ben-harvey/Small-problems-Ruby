# def square(number)
#   number ** 2
# end
require 'pry'

def multiply(a, b)
  a * b
end

def square(num)
  multiply(num, num)
end

# further exploration 

def power(num, power)
  result = num 
  (power-1).times {result = multiply(result, num)}
    # loop do
    #   result = multiply(result, num)
    #   power -= 1 
    #   break if power == 1
    # end
  result
end

p power(5, 0)