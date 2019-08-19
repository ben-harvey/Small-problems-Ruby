# Input: an Array of Integers (0..19)
# Output: a new Array sorted based on words for each number
# Data Structures: Array

# given: hash with english word as key and integer as value.

# sort the hash based on sorted numbers array


NUMBERS = ["zero", "one", "two", "three", "four", "five", "six",
 "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen",
  "fourteen", "fifteen", "sixteen", "seventeen", "eighteen",
 "nineteen"]

SORTED_NUMBERS = NUMBERS.sort

# def alphabetic_number_sort(numbers)
#   number_hash = {}
#   NUMBERS.each_with_index { |num, idx| number_hash[num] = idx }
#   sorted_array = number_hash.sort_by {|k,_| SORTED_NUMBERS.index(k)}
#   sorted_array.map {|pair| pair[1]}
# end 

# def alphabetic_number_sort(numbers) 
#   numbers.sort_by! {|num| NUMBERS[num]}
# end


# p alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

# F.E. -------

# Seems like both Array#sort_by! and Enumerable#sort_by work...

def alphabetic_number_sort(numbers)
  number_hash = {}
  NUMBERS.each_with_index { |num, idx| number_hash[num] = idx }
  sorted_array = number_hash.sort 
  sorted_array.map {|pair| pair[1]}
end 

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]