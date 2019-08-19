require 'pry'
# method takes one argument, a positive integer, 
# returns sum of its digits. 

# understanding the problem:
# 
# data structure: array, for the reduce/inject method
 
# algorithm:
  # convert integer to array of strings
  # conver array of strings to array of integers
  # call reduce on array


# def sum(number)
#   ary = number.to_s.chars
#   ary.map! {|s| s.to_i}
#   ary.reduce(&:+).to_i
# end

# refactor for brevity with chained methods

def sum(number)
  number.to_s.chars.map(&:to_i).reduce(&:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45