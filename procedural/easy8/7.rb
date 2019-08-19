# input: a string
# output: a new string with each character doubled
# data structure: array
# logic:  zip two arrays and join

def repeater(string)
  arr1 = string.chars
  arr2 = string.chars
  arr1.zip(arr2).flatten.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''