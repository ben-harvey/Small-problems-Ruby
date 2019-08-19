# Understanding the problem
# Input: two strings representing length and width of room
# Output: print string displaying area with sq ft. conversion
# Rules:  1 sq m == 10.7639 sq. ft.
          # input will always be non-negative integers

# Test cases
# 10, 7 => "The area of the room is 70.0 sq. m (753.47 sq ft)"

# Logic
  # store conversion in constant SQFT = 10.7639
  # store input in two variables, length and width
    # convert to float with String#.to_f
  # area_sqm = length * width
  # area_sqft = area_sqm * SQFT
  # print with string interpolation using Float#to_s

# SQFT = 10.7639

#   def area
#     puts "Enter the length of the room in meters: "
#     length = gets.chomp.to_f
#     puts "Enter the width of the room in meters: "
#     width = gets.chomp.to_f 
#     area_sqm = (length * width)
#     area_sqft = (area_sqm * SQFT)
#     puts "The area of the room is #{area_sqm.to_s} square meters\ (#{area_sqft.to_s} square feet)."
#   end

#   area

# refactor to use feet, convert to sq inches and sq centimeters

SQFT_TO_SQIN = 144
SQFT_TO_SQCENT = 929.03

def area
  puts "Enter the length of the room in feet: "
  length = gets.chomp.to_f
  puts "Enter the width of the room in feet: "
  width = gets.chomp.to_f
  area_sqft = length * width
  area_sqin = area_sqft * SQFT_TO_SQIN
  area_sqcent = area_sqft * SQFT_TO_SQCENT
  puts "The area of the room is #{area_sqft} square feet\
(#{area_sqin} square inches, #{area_sqcent} square centimeters)"
end

area
