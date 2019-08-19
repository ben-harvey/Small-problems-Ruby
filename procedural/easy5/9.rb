# Input: a string
# Output: a new string with all consecutive duplicate characters 
#   collapsed into a single character
# Rules:  don't use String#squeeze(!)

# Data_structures: String, Array

# Logic:  split words to array 
#         split chars to array
#         Array.uniq
#         array.join
require 'pry'

# def crunch(string)
#   new_array = []
#   string.chars.each_with_index do |char, idx| 
#     new_array << char unless char == string.chars[idx + 1]
#   end
#   new_array.join
# end

# refactor to iterate directly through string

# def crunch(string)
#   index = 0
#   new_string = ''
#   while index <= string.length - 1
#     new_string << string[index] unless string[index] == string[index + 1]
#     index += 1
#   end
#   new_string
# end

#  p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# p crunch('4444abcabccba') == '4abcabcba'
# p crunch('ggggggggggggggg') == 'g'
# p crunch('a') == 'a'
# p crunch('') == ''

# F.E. -------
# The last character of the string is omitted if the iteration stops when 
# the index is equal to text.length -1

def crunch(string)
  new_string = ''
  index = 0
  string.each_char do |char| 
    new_string << char unless string[index] == string[index + 1]
    index += 1
  end
  p new_string
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
