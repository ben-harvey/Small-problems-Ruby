=begin
input: a string
output: a string with odd indexed words reversed

rules:
  input words can have up to 20 chars
  input has one or more words
  input has words separated by one or more spaces
  input ends in point
  input point preceded by 0 or more spaces
  output words separated by one space only
  reverse odd indexed words

edge cases:
  one word -> not reversed
  last word is odd -> letters are reversed properly w
    with point added

algorithm:
  squeeze out extra spaces
  split to array on spaces and point
  reverse odd indexed words
  join with single space
  add point
=end

def odd_words(sentence)
  return '' if sentence.empty?
  sentence.squeeze!(' ')
  words = sentence.split(/[ .]/)
  words.map!.with_index do |word, index|
    index.odd? ? word.reverse : word
  end
  words.join(' ') + '.'
end

p odd_words('whats   the matter with kansas   now    .')
p odd_words('')
p odd_words('.')