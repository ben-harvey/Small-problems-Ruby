# input: three integers representing grades
# output: the letter grade associated with the mean of those grades
# rules: mean is sum / length
#       given grade table
#           90 <= score <= 100  'A'
#           80 <= score < 90  'B'
#           70 <= score < 80  'C'
#           60 <= score < 70  'D'
#           0 <= score < 60  'F'
#       input between 0-100

# data structure: hash
# logic:  create lookup table for grades
#         calculate mean of 3 inputs
#         look up mean in tables and return letter grade

# GRADES = {
#   (0..59) => "F", (60..69) => "D", (70..79) => "C", (80..89) => "B",
#   (90..100) => "A"
#   }


# def get_grade(first, second, third)
#   mean_sum = [first, second, third].inject(:+)
#   mean = mean_sum / 3
#   grade = GRADES.select do |range, letter|
#     range.include?(mean)
#   end
#   grade.values[0]
# end

def get_grade(g1, g2, g3)
  mean = (g1 + g2 + g3)/3

  case mean
  when (90..100) then "A"
  when (80..89) then "B"
  when (70..79) then "C"
  when (60..69) then "D"
  when (0..59) then "F"
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
p get_grade(0, 0, 0) == "F"