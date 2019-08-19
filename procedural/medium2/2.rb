# input: a string
# output: a boolean, whether input can be spelled with blocks from rules using each block only once
# rules:
#   B:O   X:K   D:Q   C:P   N:A
#   G:T   R:E   F:S   J:W   H:U
#   V:I   L:Y   Z:M

#   case-insensitive

# ds: array

# logic:
#   - build array BLOCKS from rules
#   -for each letter in input
#     iterate over letter pairs in BLOCKS
#     if current letter is included in an element, delete that element from the array and add that letter to the result
#   -check if result matches input

def block_word?(input)
  blocks = %w(bo xk dq cp na gt re fs jw hu vi ly zm)
  lowercase_input = input.downcase
  result = ''
  lowercase_input.each_char do |char|
    blocks.each do |block|
      if block.include?(char)
        result << char
        blocks.delete(block)
      end
    end
  end
  result == lowercase_input
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

