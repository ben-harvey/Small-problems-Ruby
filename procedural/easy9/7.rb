# input: string with first and last name
# output: string with last name, comma, and first name

def swap_name(name)
  name.split.reverse.join(', ')
end


p swap_name('Joe Roberts') == 'Roberts, Joe'