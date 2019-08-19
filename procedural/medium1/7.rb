# input: a string
# output: the same string with number words replaced with digits
# rules:
# ds: array
# logic:
#   initialize array with number
#   iterate over input and replace number word at index n with
#     index converted to string
      # word with punctuation must be stripped


NUMBER_WORDS = %w(zero one two three four five six seven eight nine)

def word_to_digit(string)
  NUMBER_WORDS.each_with_index do |word, index|
    string.gsub!(/#{word}/, index.to_s)
  end
  string
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'