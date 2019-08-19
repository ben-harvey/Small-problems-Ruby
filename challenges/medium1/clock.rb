=begin
  class methods
    at(hour, minute)
      creates a clock object at time defined by arguments
      minute arg is optional

  instance methods
    to_s
      returns formatted string of clock object

    +(minutes)
      adds minutes

    -(minutes)
      subtracts minutes

    =(clock1, clock2)
      defines equality
        hours = hours and minutes = minutes

=end
require 'pry'

class Clock
  def initialize(hour, minute)
    @time = Time.new(1, 1, 1, hour, minute)
  end

  def self.at(hour, minute=0)
    new(hour, minute)
  end

  def to_s
   @time.strftime("%H:%M")
  end

  def ==(other_time)
    self.to_s == other_time.to_s
  end

  def new_time(time)
    hour = @time.hour
    minute = @time.min
    Clock.new(hour, minute)
  end

  def +(minutes)
    @time += (minutes * 60)
    new_time(@time)
  end

  def -(minutes)
    @time -= (minutes * 60)
    new_time(@time)
  end
end
