# Input: a string of integers with no invalid characters
# Output: an integer that matches the input
# Rules: no standard conversion methods(String#$to_i or Integer())

# Test cases:  zero?

# string_to_integer('0') == 0
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570

# Logic:  split string into individual digits
#         lookup table eg {'4' => 4} that returns a new array
#         inject array as below


# [5, 1, 7 ,8].inject{|n, d| n * 10 + d}
# 5178
# (5 * 10) + 1 = 51
# (51 * 10) + 7 = 517
# (517 * 10) + 8 = 5178

S_TO_I = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
          '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

H_TO_I = { 'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13, 'e' => 14,
          'f' => 15}

# def generate_number_array(string)
#   string.chars.map { |char| S_TO_I[char] }
# end

# def string_to_integer(string)
#   num_array = generate_number_array(string)
#   num_array.inject { |product, factor| (product * 10) + factor}
# end

# puts string_to_integer('0') == 0
# puts string_to_integer('4321') == 4321
# puts string_to_integer('570') == 570

# further exploration ----------------------------------------------

# convert hexadecimal to integer
# Input: string representing hexadecimal 
# Output: integer
# Data structures: string, integer
# Rules: 1-9, a-f = 10-16
# sum of each place * 16**n
#       
# Logic: 
#       do string_to_integer conversion on integers and lookup on letters
#       power = 0
#       for each place, result array << (current_number * 16**power)
#       power += 1
#       inject result array to get sum

# hexadecimal_to_integer('4D9f') == 19871
# hexadecimal_to_integer('8F') == 143
# hexadecimal_to_integer('589') == 1417

def number_array(string)
  split_string = string.downcase.chars
  split_string.map do  |char|
    if S_TO_I.keys.include?(char)
      char = S_TO_I[char] 
    else
      char = H_TO_I[char] 
    end
  end
end

def hexadecimal_to_integer(string)
  number_array = number_array(string) 
  multiplied_array = []
  power = -1
  # counter = -1
  multiplied_array = number_array.reverse.map do |current_number|
    power += 1
    current_number * (16 ** power)
  end
  # loop do
  #   multiplied_array << number_array[counter] * (16 ** power)
  #   power += 1
  #   counter -= 1
  #   break if multiplied_array.size == number_array.size
  # end
  multiplied_array.inject(:+)
end

p hexadecimal_to_integer('4D9f') == 19871
p hexadecimal_to_integer('8F') == 143
p hexadecimal_to_integer('589') == 1417
