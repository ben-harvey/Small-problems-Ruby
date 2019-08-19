=begin
If the phone number is less than 10 digits assume that it is bad number
If the phone number is 10 digits assume that it is good
If the phone number is 11 digits and the first number is 1, trim the 1 and use the last 10 digits
If the phone number is 11 digits and the first number is not 1, then it is a bad number
If the phone number is more than 11 digits assume that it is a bad number

class methods
  init
    takes a string rep a phone number

instance methods
  number
    input: phone number string
    output: new, cleaned string for good numbers, 10 0's for bad number
      if first digit is 1, return 10 digits
      else return full string

  to_s
    input: phone number string
    output: new string with this format: (555) 123-4567

  area_code
    input: phone number string
    output: new string with first 3 digits of input

  algorithm
    strip non-numbers from string
    check against rule logic
      if bad, return string of 0s
=end
require 'pry'

class PhoneNumber
  BAD_NUMBER = '0000000000'

  def initialize(number)
    @number = format(number)
  end

  def format(number)
    return BAD_NUMBER if  number.match(/[a-zA-Z]/)

    number.gsub!(/\D/, '')

    if number.size == 11 && number[0] == '1'
       number.slice!(0)
    end
    number.size == 10 ?number : BAD_NUMBER
  end

  def number
    @number
  end

  def area_code
    @number[0..2]
  end

  def prefix
    @number[3..5]
  end

  def line_number
    @number[6..9]
  end

  def to_s
    "(#{area_code}) #{prefix}-#{line_number}"
  end
end

