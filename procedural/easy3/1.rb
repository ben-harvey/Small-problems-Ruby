# Understand the problem:
#   Input: 6 numbers from user input
#   Output: A string describing whether or not the 6th number appears
#           among the first 5 numbers

# Data structures:
#   Input: number as string
#   Processing: array
#   Output: string with interpolation

# Test cases:

# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].
# ----
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23]

# Logic:  initialize empty array
#         push first 5 numbers to array
#         check if array includes 6th number
#         output string

def prompt(message)
  puts "==> #{message}"
end

responses = []

prompt('Enter the first number:')
responses << gets.chomp.to_i
prompt('Enter the second number:')
responses << gets.chomp.to_i
prompt('Enter the third number:')
responses << gets.chomp.to_i
prompt('Enter the fourth number:')
responses << gets.chomp.to_i
prompt('Enter the fifth number:')
responses << gets.chomp.to_i
prompt('Enter the sixth number:')
number_to_check = gets.chomp.to_i

if responses.include? number_to_check
  prompt("The number #{number_to_check} appears in #{responses}.")
else
  prompt("The number #{number_to_check} doesn't appear in #{responses}.")
end
