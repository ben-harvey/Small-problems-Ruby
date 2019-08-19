# START start of the program
# SET sets a variable we can use for later
# GET retrieve input from user
# PRINT displays output to user
# READ  retrieve value from variable
# IF / ELSE IF / ELSE show conditional branches in logic
# WHILE show looping logic
# END end of the program

# imperative vs declarative
# imperative maps every step in the loop explicity
# declarative uses methods to implicitly loop

# SET length = string.size
# SET new_string = ''
# IF new_string.size < string.size
#   new_string + 1
# IF new_string.size < string.size
#   new_string + 0
# PRINT new_string
# END

# def stringy(integer)

#   new_string = ''
#   loop do
#     if new_string.size < integer
#       new_string << '1'
#     else 
#       break
#     end
#     if new_string.size < integer
#       new_string << '0'
#     else
#       break
#     end
#   end
#    new_string
# end

# refactor to use array (rather than string) as data structure,
# .times loop, and ternary stamement to check if index is even
#  

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number 
  end

  numbers.join
end

# further exploration: 

# stringy now takes two arguments, the first is the size of the string
# to be returned, the second defaults to 1 and returns the same result 
# as the original stringy method, but when passed a value of 0, generates
# a string of 0s and 1s starting with 0

# puts stringy(6)  == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'
# puts stringy(5, 0) == '01010'
# puts stringy(3, 0) == '010'
# puts stringy(0, 0) == '0'

# Algorithm
# add optional second parameter to method. add conditional that checks 
# optional parameter. if present, implement a do loop with same logic 
# as the first but that appends 0 if index is even, 1 if odd. 

def stringy(size, order=1)
  numbers = []
  if order == 1
    size.times do |index|
      number = index.even? ? 1 : 0
      numbers << number
    end
  else 
    size.times do |index|
      number = index.even? ? 0 : 1
      numbers << number 
    end
  end
    numbers.join
end

puts stringy(6)  == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(5, 0) == '01010'
puts stringy(3, 0) == '010'
puts stringy(0, 0) == ''