# input: an integer
# output: an array of all integers from 1 to input
# ds: array
# logic:  add each number to an array

# def sequence(integer)
#   result = []
#   1.upto(integer) do |num|
#     result << num
#   end
#   result
# end

def sequence(integer)
  (1..integer).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]