# # input: a string
# # output: an array of all substrings that start with each
# #   character of original string
# # rules:  all substrings starting at 0 come first, then 1, 2, etc
#           # for each position, substrings ordered short to long
# # data structure: array
# # logic:    -refactor substrings_at_position to accept position
#             argument

#             -iterate over string and call s_a_p on each character
#               -store results in temp array then push to result array


def substrings_at_index(string, index)
  substrings_at_index = []
  index.upto(string.size - 1) do |num|
    substrings_at_index << string[index..num]
  end
  substrings_at_index
end

def substrings(string)
  substrings = []
  0.upto(string.size - 1) do |num|
    substrings.concat(substrings_at_index(string, num))
  end
  substrings
end


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
