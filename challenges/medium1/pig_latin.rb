=begin
class methods:
  translate(string)
    outputs a string rep translation of input string

rules:
  if first char is vowel, add 'ay' to end
  if first char is consonant, move to end, then add 'ay'
  if any of first 3 chars are 'ch', treat as consonant until end of pattern
  if any of first chars are 'qu', treat as consonant until end of pattern
  if any of first chars are 'th', treat as consonant until end of pattern
  for multiple words, split on spaces, translate, and join with spaces
  y is a consonant if followed by a vowel, a vowel otherwise
  x is a consonant if followed by a vowel, a vowel otherwise

algorithm
  translate_word:
    define constants of vowels, consonants, two-letters
      (ch, qu, th, and specials(x, y)
    split input to chars
    transform input based on lookup

  translate
  split input and translate each, then join
=end

class PigLatin
  def self.translate(phrase)
    words = phrase.split
    words.map do |word|
      translate_word(word)
    end.join(' ')
  end

  def self.translate_word(word)
    split_word = word.split(/^(s?qu|yt.+|xr.+|[^aeiou]*)/)
    pig_sounds = split_word.size == 1 ? split_word : split_word.drop(1).reverse
    pig_sounds << 'ay'
    pig_sounds.join('')
  end
end
