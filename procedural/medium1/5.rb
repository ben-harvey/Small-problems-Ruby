# input: an odd integer n
# output: a 4 pointed diamond in an nxn grid
# rules: input always odd
# ds: string

# logic:  first row: space space star space space
#           spaces: 2 x 2 stars: 1
#         second row: space star star star space
#           spaces: 1 x 2 stars: 3
#         third row: star star star star star
#           spaces: 0 x 2 stars: 5
#         4th == 2nd
#         5th == 1st

#         spaces starts at number/2 and decreases by 1
#         stars starts at 1 and increases by 2
          # n = 9 => 0 1 2 3 4 3 2 1 0

def build_starray(number)
  starray = []
  spaces = number / 2
  stars = 1

  (spaces + 1).times do
    space_string = ' ' * spaces
    star_string = '*' * stars
    starray << (space_string + star_string + space_string)
    spaces -= 1
    stars += 2
  end
  starray
end

def print_diamond(number)
  starray = build_starray(number)
  spaces = number / 2

  0.upto(spaces) do |num|
    puts starray[num]
  end

  (spaces - 1).downto(0) do |num|
    puts starray[num]
  end
end


# diamond(1)

# *


# diamond(3)

#  *
# ***
#  *

print_diamond(1)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *