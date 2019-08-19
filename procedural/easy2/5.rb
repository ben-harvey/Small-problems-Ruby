# Understanding the problem
# Input: user inputs name with optional '!'
# Output: print: IF name, 'Hello name'
#         IF name! 'HELLO NAME, WHY ARE WE SCREAMING?'

# Test case:
# What is your name? Bob
# Hello Bob.
# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

# Logic: get input with name = Kernel#gets
# IF name includes '!'
# print string with name.upcase
# ELSE
# print greeting

# def greeting
#   puts "What is your name?"
#   name = gets.chomp
#   if name.include?('!')
#     puts "HELLO #{name.upcase.chomp('!')}. WHY ARE WE SCREAMING?"
#   else
#     puts "Hello #{name}."
#   end
# end

# greeting

# refactor to use String#chop

def greeting
  puts "What is your name?"
  name = gets.chomp
  if name.include?('!')
    name = name.chop
    puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
  else
    puts "Hello #{name}."
  end
end

greeting
