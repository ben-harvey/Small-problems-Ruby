# input: an integer n representing the number of passes at the switches and also the total number of switches
# output: the index of the lights on after all passes are complete
# ds: an array of booleans
# rules: n = 5
          # lights start off

# ***** notice that number of lights and index of array are off by one

# initial: 0 false false false false false
# round  1 true true true true true # all
#        2 true false true false true # 2, 4
#        3 true false false false true # 3
#        4 true false false true true  # 4
#        5 true false false true false # 5  => [1, 4]

# logic: initialize an array of length n with all true values

#         set an interator starting at 2

#         invert all values at indexes that are multiples of
#           iterator

#         increment iterator until it is equal to length

#         return the index of true values

# def lights(num)
#   lights = [false] * num
#    1.upto(num) do |iterator|
#     lights.each_with_index do |light, index|
#       lights[index] = !light if (index + 1) % iterator == 0
#     end
#   end
#   result = []
#   lights.each_with_index do |light, idx|
#     result << (idx + 1) if light == true
#   end
#   result
# end

# refactor to extract to methods

def initialize_hash(num)
  (1..num).each_with_object(lights = {}) do |number, hash|
    hash[number] = false
  end
  lights
end

def invert_light!(lights, pass)
  lights.each do |light, state|
    if light % pass == 0
      lights[light] = !state
    end
  end
end

def return_light_number(lights)
  lights.select { |_, v| v == true}.keys
end


def lights(num)
  lights = initialize_hash(num)
  (1..num).each do |pass|
    invert_light!(lights, pass)
  end
  return_light_number(lights)
end


# p lights(9) #== [1, 4]
p lights(20000) #== [1, 4, 9 ]

p 31 ** 2
