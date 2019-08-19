
# split string into array, pop words off end of array and add
# to new array, return new array.join

# # Logic
# # START
# # # given a string
# # SET array = string.split 
# WHILE old_array not empty
  # new array = original array.pop
# # PRINT new array.join


# def reverse_sentence(string)
#   old_array = string.split(' ')
#   new_array = []
#   loop do 
#     new_array << old_array.pop
#     break if old_array.empty?
#   end
#   new_array.join(' ')
# end

# refactor to use Array#reverse


def reverse_sentence(string)
  string.split(' ').reverse.join(' ') # argument for .split is
end                                   # optional

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'



