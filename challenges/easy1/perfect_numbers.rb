=begin
input: integer
output: a string indicating category of input
  perfect, abundant or deficient

rules:
  negative input raises RuntimeError
  perfect: sum of factors equals number
    eg 6:  its divisors are 1, 2, 3 and 6 = 1 + 2 + 3.
  abundant: sum of factors > number
  deficient: sum of factors < number

algorithm
  find divisors of input
  sum divisors
  compare to input and return string
=end

class PerfectNumber

  def self.classify(number)
    raise RuntimeError if number < 0
    sum = [*1...number].select {|n| number % n == 0}.inject(:+)
    case sum <=> number
    when 0 then 'perfect'
    when -1 then 'deficient'
    when 1 then 'abundant'
    end
  end
end

p PerfectNumber.classify(6)