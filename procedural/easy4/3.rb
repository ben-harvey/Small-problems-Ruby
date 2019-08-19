# Input: integer representing year > 0
# Output: boolean, where true: leap year, false: not
# Data structure: numbers

# Rules:
#    every year that is evenly divisible by 4, 
#    unless the year is also divisible by 100. 

  
#       true 

#    If the year is evenly divisible by 100, 
#    then it is not a leap year unless the year 
#    is evenly divisible by 400.   

  
#      true 

# Logic:  if year % 400 == 0 
#           return true
#         elsif year % 4 == 0 and not year % 100 == 0
#           return true
#         else 
#           return false

# def leap_year?(year)
#   if year % 400 == 0
#     true
#   elsif year % 4 == 0 && year % 100 != 0
#     true
#   else
#     false
#   end
# end

def leap_year?(year)
  (year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0)
end
  


puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true