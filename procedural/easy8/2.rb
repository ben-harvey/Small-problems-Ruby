# input: four strings representing a noun, verb, adjective and
#   adverb
# output: a new string inserting input strings into a story
# rules:  input is provided by user
# data structures: string
# logic: gets.chomp and store in string
#         string inpterpolation

#

def madlibs()
  parts_of_speech = %w(noun verb adjective adverb)
  input = {}
  parts_of_speech.each do |part|
    puts "Please enter a#{'n' if part[0] == 'a'} #{part}: "
    response = gets.chomp
    input[part.to_sym] = response
  end
  story = "The #{input[:adjective]} #{input[:noun]} #{input[:verb]}s #{input[:adverb]}"
end


p madlibs()