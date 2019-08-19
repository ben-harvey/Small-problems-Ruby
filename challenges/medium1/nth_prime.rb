=begin
  class method
    nth(number)
      returns the prime number at the ordial position of number
      *** beware of off-by-one errors!

  algorithm
    build a list of prime numbers that has the length of the argument
      for each number
        find square root of the number
        for each prime number up to the sqrt
         if the number is divisible by the sqrt
            go to next number
          else
            add to list
    return the last number in the list when length is reached
=end
require 'pry'

class Prime
  def self.is_prime?(number)
    sqrt = Math.sqrt(number)
    (2..sqrt).each {|n| return false if number % n == 0 }
    true
  end

  def self.nth(n)
    raise ArgumentError if n < 1
    primes = [2]
    number = 3

    loop do
      return primes[-1] if primes.size == n
      primes << number if is_prime?(number)
      number += 2
    end
  end
end

# p Prime.nth(10000)
