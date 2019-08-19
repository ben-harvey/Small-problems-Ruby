# Understanding the problem:
# Input: user inputs two numbers representing age and target
# retirement age
# Output: Print current year, print retirement year, print
# difference

# Test case: What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!
#
# Logic: use Kernel#gets to get input.to_i
# difference = target - age
# today = Time.new.year
# retirement_age = today + difference
# print with string interpolation

def retirement_calculator
  puts "What is your age?"
  age = gets.chomp.to_i
  puts "At what age would you like to retire?"
  target = gets.chomp.to_i
  difference = target - age
  current_year = Time.new.year
  retirement_age = current_year + difference
  puts "It's #{current_year}. You will retire in #{retirement_age}."
  puts "Only #{difference} years of work to go!"
end

retirement_calculator
