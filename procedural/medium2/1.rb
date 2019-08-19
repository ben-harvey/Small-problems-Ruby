# input: a text file
# output: print the longest sentence in the text file along with the length of that sentence
# rules:
#   sentences end with . ! ?
#   any non-space characters besides above count as a word
# ds: array

# logic:
#   -read text from source file
#   -split text into sentences
          # -if last character in word is .?!
                # -split

#   -select longest sentence
#   -find length of longest sentence
#   -print result with punctuation readded

def longest_sentence(source)
  text = File.read(source)
  split_text = text.split(/[.?!]/)  #(/(?<=[.?!]) /)

  longest = split_text.max_by {|sentence| sentence.split(' ').size}

   puts "#{longest}"
   puts  "Size: #{longest.split(' ').size}"
end
p longest_sentence('test.txt')

# LS solution uses String#strip to remove leading and trailing whitespace

# text = File.read('test.txt')
# sentences = text.split(/\.|\?|!/)
# largest_sentence = sentences.max_by { |sentence| sentence.split.size }
# largest_sentence = largest_sentence.strip
# number_of_words = largest_sentence.split.size

# puts "#{largest_sentence}"
# puts "Containing #{number_of_words} words"