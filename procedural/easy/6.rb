# given a string containing 1 or more words

# START start of the program
# SET sets a variable we can use for later
# GET retrieve input from user
# PRINT displays output to user
# READ  retrieve value from variable
# IF / ELSE IF / ELSE show conditional branches in logic
# WHILE show looping logic
# END end of the program

# SET array = string.split
# IF array[word].length >= 5
# reverse word
# ELSE  
# return word 
# array.join

def reverse_words(string)
  array = string.split
     array.map {|word| word.length >= 5 ? word.reverse : word }.join(' ')

  # new_array = array.map do |word|
  #   if word.length >= 5 
  #     word.reverse
  #   else
  #     word
  #   end
  # end

  #   new_array.join(' ')
  end



puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')