# input: two integers, a count and a starting number
# output: an array the same length as count, with input number
# rules: count always >= 0
#         starting number is an integer
#         count of 0 returns []
# ds: array
# logic:  get a range from one to the count
#         for each number in that range, multiply it with the starting
#           number


def sequence(count, start_num)
  # return [] if count == 0
  (1..count).map do |count_num|
    count_num * start_num
  end
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []