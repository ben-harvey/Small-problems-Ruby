# input: a string
# output: an Array of each word in the string with integer representing
# length appended.
# ds: array
# rules: each word separated by one space, non-space chars count as word.
#       empty string returns empty array

# logic  iterate over the input string word by word.
#       add each word and its lenght to the result

# def word_lengths(string)
#   result = []
#   input_array = string.split
#   input_array.each do |word|
#     result << "#{word} #{word.length}"
#   end
#   result
# end

def word_lengths(string)
  input_array = string.split
  input_array.map do |word|
    "#{word} #{word.length}"
  end
end

def word_lengths(string)
  string.split.map do |word|
    "#{word} #{word.length}"
  end
end

p word_lengths("cow sheep chicken") #== ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []