=begin
input: an integer rep. upper limit (inclusive)
output: an array containing primes up to input

rules: use sieve algorithm

algorithm:
  initialize a hash from with values 2 up to input and value = true
  for each *unmarked* keys in hash starting at 2
    iterate through multiples of value and set value to false
  select key/val pairs where value == true and return array of keys
=end

require 'pry'

class Sieve
  attr_reader :limit, :numbers

  def initialize(limit)
    @numbers = [*2..limit]
  end

  def primes
    numbers.each do |number|
      numbers.delete_if {|n| n % number == 0 && number != n }
    end
    numbers
  end
end

# sieve = Sieve.new(10)
# p sieve.primes
