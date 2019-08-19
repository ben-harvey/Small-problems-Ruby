# input: an integer
# output: that integer, but negative if not already
# ds: integer
# logic:  check if negative
#         if so, return
#           if not, multiply by -1


def negative(integer)
  return integer if integer * -1 > 0
  return integer * -1
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby