# Understand the problem:
# Input: n/a
# Output: odd numbers from 1-99 inclusive

# Test case
#   1
#   3
#   7
#   ...
#   99

# Logic: use range.each with block returning true if odd?

# (1..99).each { |n| puts n if n.odd? }

# refactor to use simple loop

value = 1
while value <= 99
  puts value if value.odd?
  value += 1
end
