# input: a string
# output: a new string with each consonant doubled
# rules: vowels, digits, special chars not doubled
# data structure: string

# logic:  declare consonants as constant
          # if consonant includes char
          #   add char to result twice
          # else
          #   add once

# def double_consonants(string)
#   result = ''
#   string.each_char do |char|
#     if char =~ /[b-df-hj-np-tv-z]/i
#       result << char * 2
#     else
#       result << char
#     end
#   end
#   result
# end

# refactor if else


def double_consonants(string)
  result = ''
  string.each_char do |char|
    result << char
    result << char if char =~ /[b-df-hj-np-tv-z]/i
  end
  result
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""

