# Understand the problem
# Input: none
# Output: print string to console
# Data Structure: string
# Rule:  generate random number between 20-200
      
# Algorithm:  use Kernel#rand to generate number
              # use string interpolation with #to_s method

def how_old
  puts "Enter a name: "
  name = gets.chomp
  name = 'Teddy' if name.empty?
  puts "#{name} is #{rand(20..200).to_s} years old!"
end

how_old
