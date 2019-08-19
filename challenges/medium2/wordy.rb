=begin
  class WordProblem
    init
      takes string argument

    instance methods
      answer
        returns integer answer to init's string arg
        raises ArgError if string doesn't include approved words

      input_to_a
  algorithm
    build lookup table of operand words and corresponding operators
    strip string input down to an array of tokens and operators
    substitute operators
      eg What is 2 multiplied by -2 multiplied by 3
        2, '*', -2, '*',  3
        take first 3 elements
        calculate
        append back to array
        break if there aren't three more elements to take
        return remaining element

a = 1
a.method('+').call(2)
=> 3
=end

require 'pry'

class WordProblem
  def initialize(input)
    @input = input_to_a(input)
  end

  ALLOWED_WORDS = %w[What is plus minus divided multiplied by ?]

  OPERATOR_WORDS = {
    'plus' => '+',
    'minus' => '-',
    'divided' => '/',
    'multiplied' => '*'
  }
  EXTRANEOUS_WORDS = %w[What is by]

  def input_to_a(input)
    words = input.split(/[ ?]/)
    raise ArgumentError unless valid_words?(words)
    words.delete_if { |word| EXTRANEOUS_WORDS.include?(word) }
    convert_words(words)
  end

  def convert_words(words)
    words.map do |word|
      if is_digit?(word)
        word.to_i
      else
        OPERATOR_WORDS[word]
      end
    end
  end

  def answer
    loop do
      current_equation = @input.shift(3)
      current_answer = calculate(*current_equation)
      @input.unshift(current_answer)
      return @input.first if @input.size == 1
    end
  end

  def calculate(first_number, operand, second_number)
    first_number.method(operand).call(second_number)
  end

  def valid_words?(words)
    words.all? do |word|
      ALLOWED_WORDS.include?(word) || digit?(word)
    end
  end

  def digit?(word)
    word.to_i.to_s == word
  end
end
