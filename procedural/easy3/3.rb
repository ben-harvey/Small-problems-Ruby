# Input: user inputs a word or multiple words
# Output: string reporting on number of characters in input 
#         not counting spaces

# Data structures:
#   Input: string
#   Processing: array
#   Output: string

# Rules: 
#   Letters and punctuation count as characters
#   spaces don't 

# Test cases
#   -empty string? 
#   -spaces at beginning of string?

#   Please write word or multiple words: walk
#   There are 4 characters in "walk".

#   Please write word or multiple words: walk, don't run
#   There are 13 characters in "walk, don't run".

#   Please write word or multiple words:
#   No words entered, please try again.

#   Please write word or multiple words: '   walk'
#   There are 4 characters in "walk".

# loop do
#   puts 'Please enter a word or multiple words: '
#   response = gets.chomp
#   if !response.empty?
#     response_length = response.split(' ').join.length
#     puts "There are #{response_length} characters in #{response}."
#     break
#   else
#     puts 'No words entered, please try again.'
#   end
# end

# refactor to use String#delete
loop do
  puts 'Please enter a word or multiple words: '
  response = gets.chomp
  if !response.empty?
    response_length = response.delete(' ').length
    puts "There are #{response_length} characters in #{response}."
    break
  else
    puts 'No words entered, please try again.'
  end
end
