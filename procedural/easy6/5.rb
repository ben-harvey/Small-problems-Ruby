  # Input: an Array
  # Output: the same Array with elements reversed
  # Data stuctures: Array
  # Rules: No Array#reverse(!)
  # Logic:  sort list in reverse order

# def reverse(list)
#   list.sort { |a, b| b <=> a }
# end

# refactor to use Array#reverse_each

# def reverse(list)
#   result = []
#   list.reverse_each {|element| result << element}
#   result
# end

# refactor to use Enumerator#each_with_object

# def reverse(array)
#   result = array.each_with_object([]) {|element, result|  result.unshift(element)}
# end

# refactor to use Enumerator#inject

def reverse(array)
  array.inject([]) { |result, element| result.unshift(element) }
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true
p 
p list = [1, 2, 3]                      # => [1, 2, 3]
p new_list = reverse(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1] 