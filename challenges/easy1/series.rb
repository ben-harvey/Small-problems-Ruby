class Series
  def initialize(numbers)
    @numbers = numbers.each_char.map(&:to_i)
  end

  def slices(n)
    raise ArgumentError, 'n is too large' if n > @numbers.length
    @numbers.each_cons(n).to_a
  end
end
