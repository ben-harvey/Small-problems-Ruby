# # Input: string with punctuation and caps
# # Output: boolean
# # Data structures: array

# # Logic:  string to array
# #         strip punctuation
# #         check for array.reverse == array

# def real_palindrome?(string)
#   # stripped_string = string.downcase.gsub(/\W+/, '') 
#   stripped_string == stripped_string.reverse
# end

# # Test cases:

# puts real_palindrome?('madam') == true
# puts real_palindrome?('Madam') == true           # (case does not matter)
# puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# puts real_palindrome?('356653') == true
# puts real_palindrome?('356a653') == true
# puts real_palindrome?('123ab321') == false


