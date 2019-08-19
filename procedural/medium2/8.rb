# input: an integer
# output: a new integer rep. next featured number greater than input
# rules:
#   'featured number'
#     - odd
#     - multiple of 7
#     - each digit only once
#   error message if no such thing

# ds: array

# logic: generate featured number with logic above
#         check if last el in array is greater than input
#           if so, generate one more and return
#             -if can't, return error message
def featured?(num)
  num.odd? && num % 7 == 0 && num.digits.uniq == num.digits
end

def featured(input)
  featured = input - (input % 7)
  error_string = 'There is no possible number that fulfills those requirements'
  iterator = input - (input % 7)
  loop do
    featured = iterator if featured?(iterator)
    return featured if featured > input
    iterator += 7
    return error_string if iterator > 9_999_999_999
  end
  featured
end

p featured(12) #== 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
 p featured(999_999_987) == 1_023_456_987

 p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements