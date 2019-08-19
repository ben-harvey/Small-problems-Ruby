# Input: two strings of different lengths
# Output: a string concatenating the shorter string, longer string, 
#   shorter string
# Data structures: string

# Logic: find longer string with string.size
# if a > b
#   a + b + a
# else 
#   b + a + b

def short_long_short(string1, string2)
  if string1.size > string2.size
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end

# Test cases:
puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"