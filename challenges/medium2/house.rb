=begin description
This is the house that Jack built.

This is the malt
that lay in the house that Jack built.

This is the rat
that ate the malt
that lay in the house that Jack built.

This is the cat
that killed the rat
that ate the malt
that lay in the house that Jack built.

This is the dog
that worried the cat
that killed the rat
that ate the malt
that lay in the house that Jack built.

This is -1[0].

This is -2[0]
-2[1] -1[0].

This is -3[0]
-3[1] -2[0]
-2[1] -1[0]
=end

require('pry')

class House
  def self.recite
   text = self.pieces.flatten
   stanzas = []
   index = -1
   loop do
      current_stanza = text[index..-1]
      current_stanza.unshift("This is")

      stanzas << current_stanza
      index -= 2
      break if index.abs > text.size
    end

    self.all_lines(stanzas)
  end

  def self.all_lines(stanzas)
    all_lines = stanzas.each_with_object([]) do |stanza, arr|
      lines = stanza.each_slice(2).map {|line| line.join(' ') }
      arr << lines.join("\n")
    end

    all_lines.last << "\n"
    all_lines.join("\n\n")
  end

  private

  def self.pieces
    [
      ['the horse and the hound and the horn', 'that belonged to'],
      ['the farmer sowing his corn', 'that kept'],
      ['the rooster that crowed in the morn', 'that woke'],
      ['the priest all shaven and shorn', 'that married'],
      ['the man all tattered and torn', 'that kissed'],
      ['the maiden all forlorn', 'that milked'],
      ['the cow with the crumpled horn', 'that tossed'],
      ['the dog', 'that worried'],
      ['the cat', 'that killed'],
      ['the rat', 'that ate'],
      ['the malt', 'that lay in'],
      ['the house that Jack built.']
    ]
  end
end
