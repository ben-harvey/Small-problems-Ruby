=begin
input:
  a string to match
  an array of strings to match against

output:
  an array of strings rep. matches

rules:
  return empty array if no match
  each letter in match string must be used once only
  identical words are not matches
  match string cannot be subset of match
  matches are case insensitive

data structure:
  array
  string

algorithm
  convert search term and list to lowercase
  split
  sort
  select based on equality

=end

class Anagram
  attr_reader :search_term, :search_letters

  def initialize(search_term)
    @search_term = search_term
    @search_letters = search_term.downcase.chars.sort
  end

  def is_match?(word)
   letters(word) == search_letters && word.downcase != search_term.downcase
  end

  def letters(word)
    word.downcase.chars.sort
  end

  def match(list)
    list.select {|word| is_match?(word)}
  end
end
