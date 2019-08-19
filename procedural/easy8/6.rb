# input: two integer arguments, representing beginning and end of integer
#   range
# output: a string, see rules
# data structure: string
# rules:  if % 3 == 0
#           'Fizz'
#         if % 5 == 0
#           'Buzz'
#         if % 15 == 0
#           'FizzBuzz'
#         else
#           integer

# logic:  iterate over input range
#         conditional flow
#         result <<

# def fizzbuzz(start_num, end_num)
#   result = []
#   (start_num..end_num).each do |num|
#     if num % 15 == 0
#       result << 'FizzBuzz'
#     elsif num % 3 == 0
#       result <<'Fizz'
#     elsif num % 5 == 0
#       result << 'Buzz'
#     else
#       result << num
#     end
#   end
#   result.join(', ')
# end

# refactor to use case statement and helper method

def get_value(num)
  case
  when num % 15 == 0
    'FizzBuzz'
  when num % 5 == 0
    'Buzz'
  when num % 3 == 0
    'Fizz'
  else
    num
  end
end

def fizzbuzz(start_num, end_num)
  result = []
  (start_num..end_num).each do |num|
    result << get_value(num)
  end
  result.join(', ')
end


p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
