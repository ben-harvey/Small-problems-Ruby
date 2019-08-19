=begin
initialize(a, b)
  input:
    an integer rep month
    an integer rep year

day(a, b)
  input:
    a symbol rep day of the week
    a symbol :first, :second, :third, :fourth, :last or :teenth

  output: a Date object that matches input

other methods:
   a method that calculates the nth occurrence of given day in the month
    eg second Monday in June 20 13 => 16

    input: year, month and symbols for name of day and ordinal
    output: an integer of day of month that matches input

    algorithm:
      set counter equal to 0
      set target equal to integer rep of ordinal arg
        eg :first => 1
      iterate through days of month
      if day is equal to symbol arg
        increment counter
        increment day
      else
        increment day
      if counter is equal to target and day is equal to symbol arg
        return day

  a method that calculates the last occurrence of given day in the month
    eg monday last => 28

    input: symbol for name of day
    output: integer rep day number

    algorithm:
      set iterator at 31
      start loop
        if new date object throws error,
          subtract 1 from iterator
        else
          if day of week matches input
            return iterator
          else
            subtract one from iterator

  a method that calculates the teenth occurrence of given day in the month
    teenth = a day that ends in teenth
    13, 14, 15, 16, 17, 18, 19
    eg monday teenth => 16

    input: year, month and symbol for name of day and teenth
    output: an integer of day of month that matches input

    algorithm:
      for days 13-19
      if day is equal to symbol argument
        return day
=end
require 'date'
require 'pry'

class Meetup
  attr_reader :month, :year

  ORDS = [:first, :second, :third, :fourth]

  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(day, flag)
    day_number =
      if ORDS.include?(flag)
        ordinal(day, flag)
      elsif flag == :teenth
        teenth(day)
      else
        last(day)
      end

    Date.new(year, month, day_number)
  end

  def teenth(day)
    (13..19).each do |day_number|
      current_day = Date.new(year, month, day_number)
      return day_number if to_sym(current_day) == day
    end
  end

  def ordinal(day, flag)
    day_number = 1
    nth = 0
    target_nth = (ORDS.index(flag) + 1)

    loop do
      current_day = Date.new(year, month, day_number)
      if to_sym(current_day) == day
        nth += 1
        return day_number if nth == target_nth
      end
      day_number += 1
    end
  end

  def last(day)
    31.downto(1) do |day_number|
      begin
        current_day = Date.new(year, month, day_number)
      rescue
        next
      else
        return day_number if to_sym(current_day) == day
      end
    end
  end

  def to_sym(date) # takes Date object
    date.strftime("%A").downcase.to_sym
  end
end

