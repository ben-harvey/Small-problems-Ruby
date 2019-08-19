require 'pry'
# Understanding the problem
# Input: user inputs bill total, tip %
# Output: print strings displaying tip amount and
# total bill amount.  Display dollar amounts to two
# decimal places.

# Test cases
# 200, 15 == 'The tip is $30.00.' 'The total is $230.00'
# 0, 15  == 'Please enter a number greater than zero'
# 15, 0 == 'The tip is $0.00'  'The total is $0.00'
# a, b,  == 'Please enter a number greater than zero.'
#           'Please enter a number greater than zero.'

# Logic
# define prompt, error message, integer validation helper
#   methods
# start verification loop
# get bill and tip from user and store in variables.to_f
# break if valid input
# tip_percent = bill / 100
# total_tip = bill * tip percent
# total_bill = bill + total_tip
# print with string interpolation.

def prompt(message)
  puts "=>" + message
end

def validate_input?(input)
  input.to_i > 0 && (input.to_f.to_s == input ||
    input.to_i.to_s == input)
end

# p validate_input?('1')
# p validate_input?('egg')
# p validate_input?(0)

def error_message
  prompt("Please enter a number greater than zero.")
end

def dollar_format(number)
  '$' + format('%.2f', number)
end

prompt('Welcome to Tip Calculator!')

bill = nil
tip = nil

loop do
  prompt('What is the bill? ($)')
  bill = gets.chomp
  if validate_input?(bill)
    prompt("Your bill is #{dollar_format(bill)}.")
    break
  else
    error_message
  end
end

loop do
  prompt('What is the tip percentage?')
  tip = gets.chomp
  if validate_input?(tip)
    prompt("Your tip percentage is #{tip} percent.")
    break
  else
    error_message
  end
end

tip_percent = tip.to_f / 100
total_tip = bill.to_f * tip_percent
total_bill = bill.to_f + total_tip
# binding.pry
puts("Your tip is #{dollar_format(total_tip)}")
puts("Your total bill is #{dollar_format(total_bill)}")
