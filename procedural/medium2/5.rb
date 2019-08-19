# input: three integers
# output: a symbol  :equilateral, :isosceles, :scalene, or :invalid
# rules:
#   :equilateral - all 3 same
#   :isosceles - 2 same, one different
#   :scalene - all 3 different
#   :invalid- not all sides > 0
#             not sum of 2 shortest sides > longest side

# ds:  array

# logic: add integers to array
#         find shortest, longest and equal to
#           sort

#         check for validity
#           not all sides > 0
#           not sum of 2 shortest sides > longest side
#         check for type
#         return symbol

def is_valid?(array)
  array.none? {|e| e.zero?} && (array[0] + array[1]) > array[2]
end


def triangle(num1, num2, num3)
  sides = [num1, num2, num3].sort
  return :invalid unless is_valid?(sides)

  case
  when num1 == num2 && num1 == num3 then :equilateral
  when num1 == num2 then :isosceles
  else :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
 p triangle(3, 1, 1) == :invalid