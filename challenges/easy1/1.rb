class Series
  def initialize(numbers)
    @numbers = numbers.each_char.map(&:to_i)
  end

  def slices(n)
    raise ArgumentError, 'n is too large' if n > @numbers.length
    @numbers.each_cons(n).to_a
  end
end

# series = Series.new('01234')

# p series.slices(6)

# class Series
#   attr_reader :numbers

#   def initialize(string)
#     @numbers = string.each_char.map(&:to_i)
#   end

#   def slices(count)
#     fail ArgumentError.new("Slice is longer than input.") if count > numbers.length
#     numbers.each_cons(count).to_a
#   end
# end

# class Series
#   attr_reader :string_of_digits

#   def initialize(string_of_digits)
#     @string_of_digits = string_of_digits
#   end

#   def slices(n)
#     raise ArgumentError, 'n is too big for the string.' if n > string_of_digits.size
#     string_of_digits.each_char.map(&:to_i).each_cons(n).to_a

#     ### original implementation
#     # result = []
#     # arr = string_of_digits.split('').map(&:to_i)
#     # while arr.size >= n
#     #   result << arr.take(n)
#     #   arr.reverse!.pop
#     #   arr.reverse!
#     # end
#     # result
#   end
# end