=begin
  instance methods

    initialize(string)
      string is text to be encrypted

    normalize_plaintext
      returns: a new, normalized string

      rules:
        - keep only alphanumeric chars

    size
      returns: integer rep square size

      rules:
        - if message length  creates a perfect square (e.g. 4, 9, 16, 25, 36, etc), use that number of columns.
        - else,  choose the number of columns that corresponds to the smallest square that is larger than the number of characters in the message.
            eg:
            - 4 characters long should use a 2 x 2 square.
            - 81 characters long would use a square that is 9 columns wide.
            - between 5 and 8 characters long should use a rectangle 3 characters wide.
            - '123456789abc'

      algorithm:
        - square size is equal to the next greatest perfect square
        - generate squares until result is larger than size, then use result

    plaintext_segments
      returns: an array of strings, where each string is a single column of the square

      algorithm: each_slice?

    ciphertext
      returns: a string, where the return of plaintext_segments is read by column from left to right

      eg: ifmanwas
          meanttos
          tayonthe
          groundgo
          dwouldha
          vegivenu
          sroots

      => imtgdvsfearwermayoogoanouuiontnnlvtwttddesaohghnsseoau

      algorithm:
        - pad last array as necessary so each is the same length
        - split each array to characters
        - transpose the rows and columns
        - join each sub-array
        - join arrays to one string
        - delete the padding characters
             a.map(&:chars).transpose.map(&:join).join.trans('*', '')

    normalize_ciphertext
      returns: an array where the return of ciphertext is split to an array
      algorithm:
        - slice array into segments based on column length
        each_slice
=end
require 'mathn'

class Crypto
  def initialize(input)
    @input = input
  end

  def normalize_plaintext
    @input.downcase.gsub(/[^a-z0-9]/, '')
  end

  def size
    Math.sqrt(normalize_plaintext.size).ceil
  end

  def plaintext_segments
    normalize_plaintext.chars.each_slice(size).to_a.map(&:join)
  end

  def columns
    rows = plaintext_segments.map { |row| row.ljust(size, '*') }
    rows.map(&:chars).transpose.map(&:join)
  end

  def ciphertext
    columns.join.tr('*', '')
  end

  def normalize_ciphertext
    columns.map {|column| column.tr('*', '')}.join(' ')
  end
end


