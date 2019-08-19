=begin
  initialize:
    takes 2 args, max_factor and min_factor(optional)

  instance methods:
    generate
      create an array of palindromic numbers using products between min_factor and max_factor
      palindromic = number.digits = =number.digits.reverse
      1 * 1
      1 * 2
      ...
      1 * 9

      2 * 1
      2 * 2
      ...
      2 * 9

      3 * 1

      n.combination(2).map {|a, b| a * b}.select {|n| n.digits == n.digits.reverse}
    largest
      largest.value
        value is an instance method called on the object that largest returns

    smallest

    value

    factors
=end

class Palindromes
  def initialize(args)
    @max_factor = args[:max_factor] if args[:max_factor]
    @min_factor = args[:min_factor] || 1
  end

  Palindrome = Struct.new(:value, :factors)

  def generate
    factors = [*@min_factor..@max_factor].repeated_combination(2)
    @palindrome_factors = factors.select { |a, b| palindrome?(a, b) }
    @palindromes = @palindrome_factors.map { |a, b| a * b }
  end

  def palindrome?(a, b)
    (a * b).digits == (a * b).digits.reverse
  end

  def largest
    largest = @palindromes.max
    largest_factors = @palindrome_factors.select { |a, b| a * b == largest }
    Palindrome.new(largest, largest_factors)
  end

  def smallest
    smallest = @palindromes.min
    smallest_factors = @palindrome_factors.select { |a, b| a * b == smallest }
    Palindrome.new(smallest, smallest_factors)
  end
end
