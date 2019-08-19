# Input: an array of strings
# Output: a new array of input values with vowels removed
# Data Structures: Strings, Arrays, Regex
# Logic:  iterate with map
#         remove vowels with Regex

def remove_vowels(string_array)
  # string_array.map {|string| string.gsub(/[aeiou]/i, '')}
  # string_array.map {|string| string.delete('aeiouAEIOU')}
   string_array.map {|string| string.scan(/[^aeiou]/i).join}
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
