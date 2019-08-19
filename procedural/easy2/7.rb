# Understand the problem:
# Input: n/a
# Output: even numbers from 1-99 inclusive

# Test case
# 2
# 4
# 6
# ...
# 98

# Logic: use range.each with block returning true if even?

(1..99).each { |n| puts n if n.even? }

# refactor to use simple loop

# value = 1
# while value <= 99
#   puts value if value.even?
#   value += 1
# end
