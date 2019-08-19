=begin
input:
  optional: one or more integers rep. multiples
  integer representing exclusive limit

output:
  integer rep sum of multiples included in range from smallest
  multiple to limit (exclusive)

ps pattern:
  many to one (inject)

data structure:
   array

algorithm:
  create an array from smallest multiple to limit, exclusive
  for each multiple:
    select from that array numbers that are multiples
    appemd subarray to result
  inject result

=end
require 'powerpack'
require 'rainbow'

class SumOfMultiples
  attr_reader :multiples

  def initialize(*multiples)
    @multiples = multiples
  end

  def self.to(limit)
    SumOfMultiples.new(3, 5).to(limit)
  end

  def to(limit)
    range = [*0...limit]
    result = []
    multiples.each do |multiple|
      result << range.select {|number| number % multiple == 0}
    end
    result.flatten.uniq.inject(:+)
  end
end

p [1, 2, 4].sum
p 3.trillion

puts Rainbow('red').red
puts Rainbow("this on yellow bg").bg(:yellow) + " and " + Rainbow("even bright underlined!").underline.bright









