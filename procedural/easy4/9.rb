require 'pry'
# Input: integers with no invalid characters
# Output: a string of integers that matches the input
# Rules: no standard conversion methods(Fixnum#$to_s or String()

# Logic:  divide integer into an array 
#           1s = 

#         generate new array based on lookup table
#         join that array

# I_TO_S = {0=>"0", 1=>"1", 2=>"2", 3=>"3", 4=>"4",
#  5=>"5", 6=>"6", 7=>"7", 8=>"8", 9=>"9"} 

# def integer_to_string(number)
#   modulo = 10 
#   array = []
#   loop do
#     remainder = number % modulo
#     array << remainder
#     break if remainder == number 
#     modulo *= 10
#   end

#   number_array = []
#   divisor = 1
#   counter = 0
#   loop do 
#     number_array << array[counter] / divisor
#     divisor *= 10
#     counter += 1
#     break if number_array.size == array.size
#   end
#   number_array.reverse.map {|number| number = I_TO_S[number]}.join
# end

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    binding.pry
    break if number == 0
  end
  result
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'


further ex -----------------------------------

mutating String methods without a !

String#<<
String#clear
String#concat
String#replace
String#insert
String#prepend

mutating Array methods without a !

Array#ary[idx] = 
Array#<<
Array#clear
Array#concat
Array#delete
Array#delete_at
Array#delete_if
Array#fill
Array#initialize_copy
Array#insert
Array#keep_if
Array#pop
Array#push
Array#shift
Array#unshift

mutating Hash methods without a !

Hash#hsh[key] =
Hash#clear
Hash#delete
Hash#delete_if
Hash#keep_if
Hash#rehash
Hash#replace
Hash#shift
Hash#update