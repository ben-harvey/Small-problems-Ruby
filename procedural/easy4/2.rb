# Input: an integer representing a year
# Output: a string that begins with the century number and ends with 
#   the appropriate ordinal suffix
# Data structures: integer, string, hash for lookup table
# Edge cases: 1099, 1100, 1101, 10, 101

ORDINAL_SUFFIX = {[0] => 'th', [1] => 'st', [2] => 'nd',
                 [3] => 'rd', (4..9) => 'th'}

def increment_century?(number)
  number.to_s[-2,2].to_i != 0
end

def century_integer(number)
  return 1 if number < 100
  century = number / 100
  century += 1 if increment_century?(number)
  century
end

def century_suffix(number)
  last_place = number.to_s[-1].to_i
  last_two = number.to_s[-2, 2].to_i
  if (11..13).include?(last_two)
    'th'
  else
    ORDINAL_SUFFIX.select {|k, _| k.include?(last_place)}.values[0]
  end
end

def century(number)
  integer = century_integer(number)
  suffix = century_suffix(integer)
  "#{integer}#{suffix}"
end

puts century(2001)
puts century(2011)
puts century(2000)
puts century(11001)
puts century(1100)
puts century(1301)
puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
