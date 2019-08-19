# input: an integer
# output: the same integer if a double integer, double the input if not
# rules: double number is when first half of digits are same as second half
# data structures: integer, string

# logic:  to find double number:
#         - turn integer into string
#         -split in half
#         -see if first half equal to second half

#         to get output:
#         check if double number, if so output integer
#         if not double it and output integer
require 'pry'

def double_number?(number)
  string = number.to_s
  mid_index = string.size / 2
  symmetrical = string[0, mid_index] == string[mid_index, mid_index]
  even = string.size.even?
  symmetrical && even
end

def twice(number)
  case
  when double_number?(number)
    number
  else
    number * 2
  end
end

p twice(3) == 6
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10

