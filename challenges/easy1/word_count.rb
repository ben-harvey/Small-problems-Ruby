=begin
input: string
output: hash with keys of word and values of count

rules:
  ignores punctuation, newlines
  includes integers as string eg '1'
  ignores case
  doesn't split on mid-word apostrophes
  ignores quotation marks



=end
require 'powerpack'

class Phrase
  attr_reader :search_string

  def initialize(search_string)
    @search_string = search_string
  end

  def word_count
    # count = Hash.new(0)
    # search_string.scan(/\b[\w|']+\b/)
    # .map(&:downcase).each do |word|
    #   count[word] += 1
    # end
    # count

    search_string.scan(/\b[\w|']+\b/)
    .map(&:downcase)
    .frequencies
  end
end




