# input: string
# output: string representing middle character(s) of input
# rules: if odd, return 1 char, if even, return 2
# data structure: string

# logic:  split string into chars
#         get string length / 2
#           if odd, string(size -1, 1)

def center_of(string)
  half_size = string.size / 2
  if string.size.even?
    string[half_size - 1, 2]
  else
    string[half_size]
  end
end

p center_of('I love ruby') #== 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
