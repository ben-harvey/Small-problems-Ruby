# input: a string
# output: an array of all substrings that start with first
#   character of original string
# rules: array sorted from shortest to longest substring
# data structure: array
# logic:  initialize empty array

#         iterate over each character of string
#         add substring consisting of subsequent characters and
#           current character to array
#         use slice

def substrings_at_start(string)
  substrings = []
  1.upto(string.size) do |num|
    substrings << string[0, num]
  end
  substrings
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
