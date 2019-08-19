# =begin description

# input: an integer or a string rep decimal or binary number
# output: an array of strings rep handshake

# rules:

# index
#   -1        1 = wink
#   -2        10 = double blink
#   -3        100 = close your eyes
#   -4        1000 = jump
#   -5     10000 = Reverse the order of the operations in the secret handshake.

# 0011
# 0123
# -4-3-2-1

#   invalid binaries are equal to 0

# algorithm
#   select index of each "1" char
#   select strings from array of handshakes by index
#   reverse if index 4 == '1'

# =end

class SecretHandshake
  attr_reader :token
  HANDSHAKES = ["jump", "close your eyes", "double blink", "wink"]

  def initialize(token)
    @token = binarize(token)
  end

  def binarize(token)
    token.class == String ? token.to_i(2).to_s(2) : token.to_s(2)
  end

  def commands
    negative_indices = token.each_char.map.with_index do |char, idx|
      char == "1" ? (idx - token.size) : nil
    end.compact
    handshake = negative_indices.map { |idx| HANDSHAKES[idx] }.reverse
    handshake.include?(nil) ? handshake.reverse.compact : handshake.compact
  end
end
