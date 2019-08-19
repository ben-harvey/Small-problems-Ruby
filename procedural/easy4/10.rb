# Input: integers with + or - characters
# Output: a string of integers that matches the input
# Rules: no standard conversion methods(Fixnum#$to_s or String()

# Logic:  Check if number is negative
#           num * -1 > 0

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']


def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end


# def signed_integer_to_string(number)
#   is_negative = number * -1 > 0
#   prefix = if is_negative
#             number = number * -1
#             '-'
#           elsif is_negative == false && number == 0
#             ''
#           else 
#             '+'
#           end

#   result = ''
#   loop do
#     number, remainder = number.divmod(10)
#     result.prepend(DIGITS[remainder])
#     break if number == 0
#   end
#   prefix + result
# end

# refactor with <=>, call to integer_to_string, string 
# interpolation, negative before method call that returns integer----------------

def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when 1 then "+#{integer_to_string(number)}"
  else "#{integer_to_string(number)}"
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'





