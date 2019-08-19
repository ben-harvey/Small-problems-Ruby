# Input: String of one or more space-seperated words
# Output: Hash with count of words in input by word size
# Rules: Words are any string of characters w/o a space

# Data structures: string, Hash

# Logic:  split to array of words
#         map to array of lengths
#         map to Hash
#             key = length
#             value = count

# def word_sizes(string)
#   lengths = string.split.map{|word| word.length}
#   sizes = lengths.each_with_object({}) do |length, hash|
#     hash[length] = lengths.count(length)
#   end
# end

# refactor: initialize Hash outside of each

def word_sizes(string)
  result = Hash.new(0)
  string.split.each do |word|
    result[word.size] += 1
  end
  result
end

 p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

F.E. 


new → new_hash Show source
new(obj) → new_hash
new {|hash, key| block } → new_hash
Returns a new, empty hash. If this hash is subsequently accessed by
 a key that doesn't correspond to a hash entry, the value 
 returned depends on the style of new used to create the hash. 
 In the first form, the access returns nil. If obj is specified, 
 this single object will be used for all default values. 
 If a block is specified, it will be called with the hash object 
 and the key, and should return the default value. It is the block's 
 responsibility to store the value in the hash if required.

h = Hash.new("Go Fish")
h["a"] = 100
h["b"] = 200
h["a"]           #=> 100
h["c"]           #=> "Go Fish"
# The following alters the single default object
h["c"].upcase!   #=> "GO FISH"
h["d"]           #=> "GO FISH"
h.keys           #=> ["a", "b"]

# While this creates a new default object each time
h = Hash.new { |hash, key| hash[key] = "Go Fish: #{key}" }
h["c"]           #=> "Go Fish: c"
h["c"].upcase!   #=> "GO FISH: C"
h["d"]           #=> "Go Fish: d"
h.keys           #=> ["c", "d"]

