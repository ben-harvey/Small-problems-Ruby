=begin
input: string rep octal digit
output integer rep decimal conversion of input

data structure:
string, integer

=end
require 'pry'

class Trinary
  attr_reader :trinary
  def initialize(trinary)
    @trinary = trinary
  end

  def validate_trinary
    trinary.match(/^[012]+$/)
  end

  def to_decimal
    return 0 unless validate_trinary()

    trinary_digits = trinary.to_i.digits.map.with_index do |digit, idx|
      digit * (3 ** idx)
    end
    trinary_digits.inject(:+)
  end
end

p Trinary.new('10').to_decimal



