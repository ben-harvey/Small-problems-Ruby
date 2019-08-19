# Input: String of one or more space-seperated words
# Output: Hash with count of words in input by word size
# Rules:  Words are any string of characters w/o a space.
          # Non-alphabetic characters don't count

# Data structures: string, Hash

# Logic:  split to array of words
#         map to array of lengths
#         map to Hash
#             key = length
#             value = count

def word_sizes(string)
  cleaned_string = string.gsub(/[^\w\s]/, '') 
  #cleaned_string = string.delete('^A-Za-z ')
  # puts cleaned_string
  result = Hash.new(0)
  cleaned_string.split.each do |word| 
    result[word.size] += 1
  end
  result
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

# F.E.

# delete([other_str]+) → new_str Show source
# Returns a copy of str with all characters in the intersection of 
# its arguments deleted. Uses the same rules for building the set of 
# aracters as String#count.

# "hello".delete "l","lo"        #=> "heo"
# "hello".delete "lo"            #=> "he"
# "hello".delete "aeiou", "^e"   #=> "hell"
# "hello".delete "ej-m"          #=> "ho"