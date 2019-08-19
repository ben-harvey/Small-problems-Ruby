# Input: a string representing a valid integer which may contain a - or +
# Output: an integer that matches the input string, including the - or + 
# Data Structures: string, integer, array for lookup table of +, -
# Rules: no common conversion methods (to_i, Integer() )

# Logic:  make array for lookup => ['+', '-']
#         check if string.first.include? lookup
#         if -, return 0 - integer
#         else, return integer 


S_TO_I = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
          '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

SIGNS = ['+', '-']

sign = ''

def generate_number_array(string, sign)
  sign << string[0] if SIGNS.include?string[0]
  string == string[1..-1] if !sign.empty?
  string.chars.map { |char| S_TO_I[char] }
end 

def string_to_integer(string, sign)
  num_array = generate_number_array(string, sign)
  number = num_array.inject { |product, factor| (product * 10) + factor}
  if sign == '-'
    0 - number
  else
    number
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100


further exploration -----------------------------------

def string_to_signed_integer(string)
  
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end
