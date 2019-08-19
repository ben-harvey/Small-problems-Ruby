# Understand the problem:

# Input: user inputs integer greater than zero and
# chooses sum or product
# Output: print sum or product of all numbers between 1 and user
# number, inclusive

# Test case:

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.

# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

# Logic: get user input = gets.chomp.to_i
# IF s, reduce with + operator and store result in variable
# ELSE p, reduce with * operator and store result in variable

puts "Please enter an integer greater than 0: "
number = gets.chomp.to_i

result = nil
operation = nil
choice = nil

loop do
  puts "Enter 's' to compute the sum, 'p' to compute the product."
  choice = gets.chomp.downcase

  if choice == 's'
    operation = 'sum'
    result = (1..number).reduce(:+)
    break
  elsif choice == 'p'
    operation = 'product'
    result = (1..number).reduce(:*)
    break
  else
    puts "Please enter 's' or 'p'"
  end
end

puts "The #{operation} of the numbers between 1 and #{number} is #{result}."
