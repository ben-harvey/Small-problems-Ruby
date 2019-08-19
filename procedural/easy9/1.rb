# input: an array with 2 or more string elements, and a hash with
#       two keys, :title and :occupation
# output: a string greeting by full name and mentioning occupation.
# data structure: string
# logic:
#         - join array elements with spaces to get full name
#         - join hash elements to get full occupation
#         - add those to greeting

def greetings(array, hash)
  name = array.join(" ")
  job = hash.values.join(' ')
  puts "Hi #{name}, you are quite a #{job}!"
end

greetings(['John', 'Q', 'Doe'],
  { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.