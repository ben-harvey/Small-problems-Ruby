# input: a string
# output: a boolean
# rules: true if all uppercase, false otherwise
# ds: string
# logic: compare string to string


def uppercase?(string)
  string.upcase == string
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true