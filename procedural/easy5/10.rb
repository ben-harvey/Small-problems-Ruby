# Input: a string that fits in the terminal window
# Output: output to display a box surrounding the input


# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# Rules:  line 1: +, - * string.length + 2, +
#         line 2: |, ' ' * string.length + 2, |
#         line 3: |, ' ', string, ' ', |
#         line 4 = line 2
#         line 5 = line 1

# Logic: store string.length + 2 in variable
        

def print_in_box(string)
  horizontal_border = string.length + 2
  
  line_1 = "+#{'-' * horizontal_border}+"
  line_2 = "|#{' ' * horizontal_border}|"
  line_3 = "| #{string} |"
  line_4 = line_2
  line_5 = line_1
  
  puts line_1, line_2, line_3, line_4, line_5
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')