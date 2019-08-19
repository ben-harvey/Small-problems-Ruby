
# Understand the Problem

# input = two arguments, a positive integer representing
          # salary, and a boolean
# output = an integer representing bonus for salary

# rules:
  # if boolean == true, bonus is half of salary
  # if boolean == false, bonus is 0

# test cases:  
  # what if salary is 0 and boolean is true? 
  # what if salary is an odd number, should integer or
      # float division be used? => float

# logic
  # - if condition to check value of boolean
      # IF true,  return salary.to_f / 2

      # ELSE false, return 0 

# def calculate_bonus(salary, boolean)
#   if boolean 
#     return salary.to_f / 2
#   else
#     return 0 
#   end
# end

# refactor for brevity using ternary operator

def calculate_bonus(salary, boolean)
  boolean ? (salary.to_f / 2) : 0
end

puts calculate_bonus(699, true) == 349.5
puts calculate_bonus(0, true) == 0
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000


