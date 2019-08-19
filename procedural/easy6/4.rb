  # Input: an Array
  # Output: the same Array with elements reversed
  # Data stuctures: Array
  # Rules: No Array#reverse(!)
  # Logic:  clone placeholder array
  #         empty original Array
  #         push to original array from placeholder

# def reverse!(list)
#   copy = list.clone
#   list.clear
#   list << copy.pop until copy.empty?
# end

def reverse!(list)
  list.sort! { |a, b| b <=> a }
end


p list = [1,2,3,4]
p result = reverse!(list) # => [4,3,2,1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id
p 
p list = %w(a b c d e)
p reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]
p 
p list = ['abc']
p reverse!(list) # => ["abc"]
p list == ["abc"]
p 
p list = []
p reverse!(list) # => []
p list == []