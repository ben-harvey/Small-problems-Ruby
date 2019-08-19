# Input : user inputs two positive integers
# Output: results of following operations on those integers:
#   addition
#   subtraction
#   product
#   quotient
#   remainder
#   power

# Data structures:
#   Input: numbers as strings.to_i
#   Processing: array of operators
#   Output: strings

# Logic:  initialize array of operators
#         store numbers in variables
#         use Array#map with Method#call to create array of results
#         with loop do, iterate over the indexes of the two arrays
#         insert the above into strings.

operators = %w(+ - * / % **)

def prompt(message)
  puts "==> #{message}"
end

prompt('Enter the first number:')
first_num = gets.chomp.to_f
prompt('Enter the second number:')
second_num = gets.chomp.to_f

results = operators.map do |operator|
  first_num.method(operator).(second_num) rescue "turd"
end

iterator = 0
loop do
  puts "#{first_num} #{operators[iterator]}"\
  " #{second_num} = #{results[iterator]}"
  iterator += 1
  break if iterator == 6
end
