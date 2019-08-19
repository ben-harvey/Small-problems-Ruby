# Input: 2 Arrays
# Output: a new Array with elements from input arrays in alternation
# Rules: Input = non-empty, same length
# Data Structures: Array
# Logic: define iterator 
#        define return array
#        loop and increment iterator
#        break if iterator = array.size

# def interleave(array1, array2)
#   interleaved = []
#   iterator = 0
#   loop do 
#     break if iterator == array1.size
#     interleaved << array1[iterator]
#     interleaved << array2[iterator]
#     iterator += 1
#   end
#   interleaved
# end

# refactor to use Enum#each_with_index

# def interleave(array1, array2)
#   interleaved = []
#   array1.each_with_index do |el, idx|
#       interleaved << el << array2[idx]
#   end
#   interleaved
# end

# refactor to use Array#zip

def interleave(array1, array2)
  array1.zip(array2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
