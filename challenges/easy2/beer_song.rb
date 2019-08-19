=begin
input:

  single integer representing a verse number
  two integers, first rep starting verse and second rep ending verse

output:

  string rep verses of beer song

rules:

  each verse has two lines:
    "99 bottles of beer on the wall, 99 bottles of beer.\n" \
    "Take one down and pass it around, 98 bottles of beer on the wall.\n"

  each line ends in a period and newline char
  each verse is separated by a newline
  song counts down from 99
  pluralize bottle if greater than 1
  0 is a special case:
    rep by "no more"
    "No more bottles of beer on the wall, no more bottles of beer.\n" \
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"

methods:

    verse(number)
      returns a single verse
    verses(start, end)
      returns multiple verses from start verse to end verse
    lyrics
      returns whole song

algorithm:

  verse(number)
    pass argument into string
      0 -> 'no more'
      bottle(s) adapts to number argument
    print string
    last line is special condition
      if number > 0
        add normal line
      else

  verses(start, end)
    call verse(number) for range from start to end, inclusive

  lyrics
    call verses(99, 0)
=end

class BeerSong
  def verse_word(number)
    number == 0 ? "no more" : number.to_s
  end

  def bottle_word(number)
    number == 1 ? "bottle" : "bottles"
  end

  def beer_word(number)
    number == 1 ? "it" : 'one'
  end

  def verse(verse_number)
    first_line = "#{verse_word(verse_number).capitalize} #{bottle_word(verse_number)} of beer on the wall, #{verse_word(verse_number)} #{bottle_word(verse_number)} of beer.\n"
    second_line = "Take #{beer_word(verse_number)} down and pass it around, #{verse_word(verse_number - 1)} #{bottle_word(verse_number - 1)} of beer on the wall.\n"
    ending_line = "Go to the store and buy some more, 99 bottles of beer on the wall.\n"

    last_line = verse_number == 0 ? ending_line : second_line

    first_line + last_line
  end

  def verses(start_verse, end_verse)
    start_verse.downto(end_verse).map {|verse_number| verse(verse_number)}
    .join("\n")
  end

  def lyrics
    verses(99, 0)
  end
end

p BeerSong.new.verses(99, 98)
