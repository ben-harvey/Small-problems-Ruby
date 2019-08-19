# input: string
# output: integer representing ASCII value of string
# rule: ASCCII value of string is sum of result
#   of calling String#ord on each character

# logic: iterate through each char and += ord value to 
#   variable

def ascii_value(string)
  total = 0
  string.each_char {|c| total += c.ord}
  total
end


p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0


f. e. ----------------------------

char.ord.mystery == char

mystery = String#chr

chr only accepts one-character strings, so 
'ab'.ord.chr == 'a'