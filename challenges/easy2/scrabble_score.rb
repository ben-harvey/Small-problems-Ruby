=begin
input: a string or nil
output: an integer rep score

rules:
  empty string scores 0
  nil input scores 0
  score is sum of value of each letter
  function is case sensitive
  method can be called on instance or class
{
['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'] => 1,
['D', 'G'] => 2,
['B', 'C', 'M', 'P'] => 3,
%w[F, H, V, W, Y] => 4,
['K'] => 5,
%w[J, X] => 8,
%w[Q, Z] => 10
}

algorithm:
  upcase and split to chars
  set score to 0
  for each char, lookup key in table and increment score by value
  return score

=end


class Scrabble
  SCRABBLE_LETTER_VALUES = {
    ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'] => 1,
    ['D', 'G'] => 2,
    ['B', 'C', 'M', 'P'] => 3,
    %w[F H V W Y] => 4,
    ['K'] => 5,
    %w[J X] => 8,
    %w[Q Z] => 10
    }

  attr_reader :word

  def initialize(word)
    @word = word
  end

  def score
    return 0 if word.nil?
    score = 0
    word.upcase.split('').each do |letter|
      SCRABBLE_LETTER_VALUES.each do |letters, value|
        score += value if letters.include?(letter)
      end
    end
    score
  end

  def self.score(word)
    Scrabble.new(word).score
  end
end
