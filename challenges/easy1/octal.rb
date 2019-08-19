=begin
input: string rep octal digit
output integer rep decimal conversion of input

data structure:
string, integer

=end
require 'pry'

class Octal
  attr_reader :octal
  def initialize(octal)
    @octal = octal
  end

  def validate_octal
    octal.match(/^[01234567]+$/)
  end

  def to_decimal
    return 0 unless validate_octal()

    octal_digits = octal.to_i.digits.map.with_index do |digit, idx|
      digit * (8 ** idx)
    end
    octal_digits.inject(:+)
  end
end




