# Input: a string
# Output: a hash with 3 entries: lowercase, uppercase, and neither
# Data Structures: string, hash
# Logic:  upcase
#         downcase
#         swapcase

#         if letter.upcase = letter and letter.swapcase != letter
#           uppercase
#         if letter.downcase = and letter.swapcase != letter
#           lowercase
#         else 
#           neither

#         string to array, each with object
require 'pry'

# def letter_case_count(string)
#   letter_array = string.chars
#   result = {lowercase: 0, uppercase: 0,  neither: 0}
#   letter_array.each do |letter|
#     if letter.upcase == letter && letter.swapcase != letter
#       result[:uppercase] += 1
#     elsif letter.downcase == letter && letter.swapcase != letter
#       result[:lowercase] += 1
#     else
#       result[:neither] +=1
#     end
#   end
#   result
# end

# refactor to use String#count

def letter_case_count(string)
  result = {}
  result[:lowercase] = string.count "a-z"
  result[:uppercase] = string.count "A-Z"
  result[:neither] = string.count "^a-zA-Z"
  result
end


 p letter_case_count('abCdef 123')  == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
