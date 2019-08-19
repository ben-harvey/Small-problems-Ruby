# sum_pairs([11, 3, 7, 5],         10)
# #              ^--^      3 + 7 = 10
# == [3, 7]

# sum_pairs([4, 3, 2, 3, 4],         6)
# #          ^-----^         4 + 2 = 6, indices: 0, 2 *
# #             ^-----^      3 + 3 = 6, indices: 1, 3
# #                ^-----^   2 + 4 = 6, indices: 2, 4
# #  * entire pair is earlier, and therefore is the correct answer
# == [4, 2]

# sum_pairs([0, 0, -2, 3], 2)
# #  there are no pairs of values that can be added to produce 2.
# == None/nil/undefined (Based on the language)

# sum_pairs([10, 5, 2, 3, 7, 5],         10)
# #              ^-----------^   5 + 5 = 10, indices: 1, 5
# #                    ^--^      3 + 7 = 10, indices: 3, 4 *
# #  * entire pair is earlier, and therefore is the correct answer
# == [3, 7]

# input: array, integer
# output: 2-element array
# rules: no pairs returns nil
# logic:
# for each number in array, add subsequent numbers and see if they add up to input integer. return the first pair that does.

def sum_pairs(array, sum)
  first_idx = 0
  pairs = []

  loop do
   second_idx = first_idx + 1
    loop do
      # binding.pry
      result = array[first_idx] + array[second_idx]
      pairs << [array[first_idx], array[second_idx]] if result == sum
      break if second_idx == (array.size - 1)
      second_idx += 1

    end

    break if first_idx == (array.size - 2)
    first_idx += 1
  end
   pairs
end

p sum_pairs([0, 0, -2, 3], 2) #=> [4, 2]