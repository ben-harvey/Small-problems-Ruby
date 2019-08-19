class Book
  # attr_accessor :author, :title
  def initialize(author, title)
    @author = author
    @title = title
  end

  def title
    @title
  end

  def author
    @author
  end

  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new("Neil Stephenson", "Snow Crash")
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)
# book.author = "me"
# puts %(book = #{book}.)

# FE
=begin Using attr_accessor as I did leaves the instance variables open to be
overwritten from outside the program.  Using custom getters and setters rather
than attr methods leaves the possibility of doing more with the methods than just
getting and setting.

=end