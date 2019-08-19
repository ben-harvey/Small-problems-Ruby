# Input: a string, possibly containing non-alphabetic characters
# Output: a new string where any non-alphabetic characters from
#   input are replaced with spaces
# Rules: if > 1 non-alphabetic characters in a row, only one
#   space in output (no consecutive spaces)

# Data structures: string

# Logic gsub

# def cleanup(string)
#   string.gsub(/[^a-zA-z]/, ' ').squeeze(' ')
# end  

# puts cleanup("---what's my +*& line?") #== ' what s my line '

# F.E. --------------------------------------------------

# solve without regex
require 'pry'

LETTERS = ('a'..'z').to_a
CAPS = ('A'..'Z').to_a
ALL = LETTERS + CAPS

def cleanup(string)
  new_string = string.chars.map do |char|
    char = ' ' if !ALL.include?(char)
    char
  end
  new_string.join.squeeze(' ')
end  

puts cleanup("---what's my +*& line?") == ' what s my line '
