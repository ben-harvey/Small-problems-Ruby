# Input: a string
# Output: a boolean that represents whether input string is a palindrome

# Logic: check equality between string and String.reverse

# def palindrome?(string)
#   string == string.reverse
# end

# # Test cases:

# puts palindrome?('madam') == true
# puts palindrome?('Madam') == false          # (case matters)
# puts palindrome?("madam i'm adam") == false # (all characters matter)
# puts palindrome?('356653') == true

# def palindrome?(array)
#   array == array.reverse
# end

def palindrome?(thing)
  thing == thing.reverse
end

puts palindrome?(["m", "a", "d", "a", "m"] ) == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?(["m", "a", "d", "a", "m", " ", "i", "'", "m", " ", "a", "d", "a", "m"] ) == false # (all characters matter)
puts palindrome?('356653') == true
