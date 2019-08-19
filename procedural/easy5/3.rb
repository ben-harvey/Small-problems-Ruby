# Input: a string representing a time in 24 hr format
# Output: two integers representing the number of minutes 
#   before/after midnight 

# Data structures: integer, string

# Rules:   60 min in hr
# HOURS_IN_DAY = 24
# MINUTES_IN_HOUR = 60   

# def after_midnight(time)
#   hours = time[0, 2].to_i
#   minutes = time[3, 2].to_i
#   ((hours % HOURS_IN_DAY) * MINUTES_IN_HOUR) + minutes
# end

# def before_midnight(time)
#   am = after_midnight(time)
#   if am == 0
#     0
#   else
#     1440 - am
#   end
# end

# refactor with map and one-line if -------------

# HOURS_IN_DAY = 24
# MINUTES_IN_HOUR = 60
# MINUTES_IN_DAY = 1440   

# def after_midnight(time)
#   hours, minutes = time.split(':').map {|s| s.to_i}
#   ((hours % HOURS_IN_DAY) * MINUTES_IN_HOUR) + minutes
# end

# def before_midnight(time)
#   am = after_midnight(time)
#   am = MINUTES_IN_DAY - am if am > 0
#   am
# end

# F.E.----------------------------------------------


HOURS_IN_DAY = 24
MINUTES_IN_HOUR = 60
MINUTES_IN_DAY = 1440   

def after_midnight(time)
  midnight = Time.new(1,1,1, 0, 0, 0)
  hours, minutes = time.split(':').map {|s| s.to_i}
  new_time = Time.new(1,1,1, hours, minutes, 0)
  ((new_time - midnight) ) / MINUTES_IN_HOUR  % MINUTES_IN_DAY

 
end

def before_midnight(time)
  am = after_midnight(time)
  am = MINUTES_IN_DAY - am if am > 0
  am
end

p  after_midnight('00:00') == 0
p  before_midnight('00:00') == 0
p  after_midnight('12:34') == 754
p  before_midnight('12:34') == 686
p  after_midnight('24:00') == 0
p  before_midnight('24:00') == 0