=begin
input: string rep roman numerals
output: integer rep conversion

rules:
  1: I
  5: V
  10: X
  100: C
  50: L
  500: D
  1000 = M
  any smaller number to the left of larger number is subtraction
  smaller number to right = addition
  if 1 less than larger numeral, use larger numeral minus
  if > 1 less than larger numeral, use smaller numeral plus
    eg 8 = VIII while 9 = IX


  CD XL VIII
  100 500 10 50 5 1 1 1
  chunk while descending
  sort

  448
  400 40 8
  400

  loop do
    select numeral that current value is less than
    eg 400 > 1, 5, 10, 100
       400 < 500

    subtract current value from that numeral
    check if difference is greater than next smallest numeral
    if yes
      add next smallest numeral until result is reached
      eg 300
        500 - 300 = 200
        200 > 100
        100 + 100 + 100 = 300
        result = [100 100 100 ]

    if no
      add that numeral to result
      result = [500]
      add difference to result
      500 - 400 = 100
      result = [500, 100]

  second pass:
    40 < 50, 50 - 40 = 10
    result = [500, 100, 50, 10]

=end

class Integer
  ONES = {0 => '', 1=>"I", 2=>"II", 3=>"III", 4=>"IV", 5=>"V", 6=>"VI", 7=>"VII", 8=>"VIII", 9=>"IX"}
  TENS = {0 => '', 10=>"X", 20=>"XX", 30=>"XXX", 40=>"XL", 50=>"L", 60=>"LX", 70=>"LXX", 80=>"LXXX", 90=>"XC"}
  HUNDREDS = {0 => '', 100=>"C", 200=>"CC", 300=>"CCC", 400=>"CD", 500=>"D", 600=>"DC", 700=>"DCC", 800=>"DCCC", 900=>"CM"}
  THOUSANDS = {0 => '', 1000=>"M", 2000=>"MM", 3000=>"MMM"}

  def get_places(number)
    factor = 10 ** self.digits.length
    self.digits.reverse.map do |digit|
      factor /= 10
      digit * factor
    end
  end

  def to_roman
    result = ''
    ones, tens, hundreds, thousands = get_places(self).reverse
    result << THOUSANDS[thousands] if thousands
    result << HUNDREDS[hundreds] if hundreds
    result << TENS[tens] if tens
    result << ONES[ones] if ones
  end
end

p 3000.to_roman
# 1000, 100, 100, 10, 10, 10, 1, 5,

# numerals = {1 => 'I', 5 => 'V', 10 => 'X', 100 => 'C', 50 => 'L', 500 => 'D', 1000 => 'M'}
# numerals = numerals.invert
# p numerals

# string = 'CDXLVIII'
# numbers = string.chars.map {|letter| numerals[letter]}

# # numbers = [100, 500, 10, 50, 5, 1, 1, 1]
# sliced = numbers.slice_when {|a, b| a >= b}.to_a

# sorted = sliced.map do |sub|
#    sub.sort {|a, b| b <=> a}
# end

# p sorted.map {|sub| sub.inject(:-)}.inject(:+)