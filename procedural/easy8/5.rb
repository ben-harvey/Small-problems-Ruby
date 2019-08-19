# input: a string
# output: an Array of all palindromic substrings
# data structure: array
# rules:  -palindrome = same backwards and forwards
#           -case sensitive
#           -special characters included
#           -single words aren't palindromes

#         -return value in same order as substrings

#         -duplicates included multiple times

#         -no palindromes returns empty array

# logic:  run substrings, returns array
#         select from array
#           - substring.size > 1
#           and
#           - substring.reverse == substring

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

def palindromes(string)
  substrings = substrings(string)
  substrings.select do |substring|
    palindrome?(substring)
  end
end

def palindrome?(substring)
  substring.size > 1 && substring == substring.reverse
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
