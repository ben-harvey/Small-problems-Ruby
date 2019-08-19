# # Group 1
# def check_return_with_proc
#   my_proc = proc { return }
#   my_proc.call
#   puts "This will never output to screen."
# end

# check_return_with_proc

# procs return from block when defined inside of a method

# # Group 2
my_proc = proc { return }

def check_return_with_proc_2(my_proc)
  my_proc.call
  # puts 'e'
end

# check_return_with_proc_2(my_proc)

# procs return from block when defined outside of a method

# # Group 3
# def check_return_with_lambda
#   my_lambda = lambda { return }
#   my_lambda.call
#   puts "This will be output to screen."
# end

# check_return_with_lambda

# lambdas don't return from block when defined inside of a method


# # Group 4
# my_lambda = lambda { return }
# def check_return_with_lambda(my_lambda)
#   my_lambda.call
#   puts "This will be output to screen."
# end

# check_return_with_lambda(my_lambda)

# lambdas don't return from block when defined outside of a method


# Group 5
def block_method_3
  yield

end

block_method_3 { return }