# Input: a string
# Output: a new string where first and last letters from each 
#   word in input string are swapped.

#   Rules:  each word has at least one letter
#           string always contains one word
#           string contains only words and spaces

# Data structures: string, array

# Logic:  split into array
#         array.map   array.first <-> array.last
#         array.join ' '

# def swap(string)
#   each_word = string.split 
#   new_array = each_word.map do |word|
#     first_letter = word[0]
#     last_letter = word[-1]
#     word[0] = last_letter
#     word[-1] = first_letter
#     word
#   end
#   p new_array.join(' ')
# end

# refactor to use 'common idiom' -----------------------------

# def swap(string)
#   each_word = string.split 
#   new_array = each_word.map do |w|
#      w[0], w[-1] = w[-1], w[0]
#      w
#   end
#   p new_array.join(' ')
# end

# p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') == 'ebcdA'
# p swap('retta stewart harvey')

# F.E. -------------------------------------------------

# the return value of the method call on line 52 is an array
# containing the first and last letters of the argument.  Map
# creates a new array from the return value its block, so the 
# resulting array contains only the first and last letters


def swap_first_last_characters(a, b)
  a, b = b, a 
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word[0], word[-1])
  end
  p result
  result.join(' ')
end

p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
p swap('Abcde') #= 'ebcdA'
p swap('retta stewart harvey')