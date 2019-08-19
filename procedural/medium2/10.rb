def sum_square_difference(input)
  range = (1..input).to_a
  sq_of_s = range.inject(:+) ** 2
  squared_range = range.map {|num| num ** 2}
  s_of_sq = squared_range.inject(:+)
  sq_of_s - s_of_sq
end

p sum_square_difference(3) #== 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
# sum_square_difference(1) == 0
# sum_square_difference(100) == 25164150