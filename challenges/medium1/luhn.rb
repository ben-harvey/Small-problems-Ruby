=begin

  algorithm:
  1111 -> 2121  double every other digit starting from -1
  8763 -> 7733  subtract 9 if double is > 9
    skip 3
    double 6 = 12 - 9 = 3
    skip 7
    double 8 = 16 - 9 = 7

  sum resulting digits
    1111 -> 2121 -> 6
    8673 -> 7733 -> 20

  if total ends in 0, valid
  else, not valid
    1111 = 6 = not
    8673 = 20 = valid

  ---------
  create a valid number by adding one digit
  123 -> 1230
  1230 -> 1, 3, 6, 0 -> 10 = valid

instance methods:
  addends
    returns an array integers rep luhn addends, eg 121 -> [1, 4, 1]
  checksum
    returns an integer rep sum of addends
  valid?
    returns a boolean, true if valid, false if not

class methods:
  create(number)
    returns an integer rep a valid number with correct
    last digit added to input

=end

class Luhn
  attr_reader :starting_number

  def initialize(starting_number)
    @starting_number = starting_number.digits
  end

  def addends
    reversed_number = starting_number.map.with_index do |number, index|
      if index.odd?
        doubled = (number * 2)
        doubled > 9 ? (doubled - 9) : doubled
      else
        number
      end
    end
    reversed_number.reverse
  end

  def checksum
    addends.inject(&:+)
  end

  def valid?
    checksum % 10 == 0
  end

  def self.create(number)
    digits = number.digits.reverse
    (0..9).each do |digit|
      new_digits = (digits + [digit]).join.to_i
      return new_digits if new(new_digits).valid?
    end
  end
end
