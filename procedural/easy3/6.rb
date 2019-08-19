# Input: two arguments that evaluate to a boolean
# Output: a boolean
# Rules: one argument evaluates to true, the other false

# Data structures:
#   array 

# Logic:  create array [true, false] and [false, true]
#       check if first argument && second argument included in either array


# Test cases:
#   xor?(5.even?, 4.even?) == true
#   xor?(5.odd?, 4.odd?) == true
#   xor?(5.odd?, 4.even?) == false
#   xor?(5.even?, 4.odd?) == false


# def xor?(arg1, arg2)
#   xor_booleans = [[true, false], [false, true]]
#   test_boolean = [arg1, arg2]
#   test_boolean == xor_booleans[0] || test_boolean == xor_booleans[1]
# end

def xor?(arg1, arg2)
   arg1 && !arg2 || arg2 && !arg1
 end

 p xor?(5.even?, 4.even?) == true
 p xor?(5.odd?, 4.odd?) == true
 p xor?(5.odd?, 4.even?) == false
 p xor?(5.even?, 4.odd?) == false

1 0     *    1 0