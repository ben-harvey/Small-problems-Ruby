# Group 1
# my_proc = proc { |thing| puts "This is a #{thing}." }
# new proc can be created with call of proc
# puts my_proc
# puts my_proc.class
# my_proc.call # no error when called without argument
# my_proc.call('cat')

# # Group 2
my_lambda = lambda { |thing| puts "This is a #{thing}" }
my_second_lambda = -> (thing) { puts "This is a #{thing}" }
# created with call to lambda or ->
puts my_lambda # prints a Proc object with (lambda)
puts my_second_lambda  # prints a Proc object  with (lambda)
puts my_lambda.class
my_lambda.call('dog')
# my_lambda.call # error when called without argument
# my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}" }
# error when calling Lambda.new

# # Group 3
# def block_method_1(animal)
#   yield
# end

# block_method_1('seal') { |seal| puts "This is a #{seal}."}
# block_method_1('seal') # jump error from calling without block

# Group 4
# def block_method_2(animal)
#   yield(animal)
# end

# block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
# block_method_2('turtle') do |turtle, seal| # extra parameters are nil
#   puts "This is a #{turtle} and a #{seal}."
# end
# # block_method_2('turtle') { puts "This is a #{animal}."} # no access to
# # method parameter animal