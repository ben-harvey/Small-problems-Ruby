file = File.open('text.rb', 'r')
text = file.read
file.close

class Text
  def initialize(text)
    @text = text
  end

  def swap(letter_one, letter_two)
    @text.gsub(letter_one, letter_two)
  end

  def word_count
    @text.split.count
  end
end

toswap = Text.new(text)

p toswap.word_count