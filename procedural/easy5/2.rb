
# input: a positive or negative integer representing 
#   minutes before or after midnight
# output: a string representing time of day in 
#   24 hour format, eg '22:34'

# rules: don't use Date and Time classes
#   if input is positive, midnight + integer
#   if input is negative, midnight - integer
#   midnight = '00:00'

# data structures: Fixnum, string

# logic: convert minutes to 24 hour format
#       from number of minutes
#           hours = minutes / 60
#           minutes = minutes % 60

# def time_of_day(minutes)
#   hours = (minutes / 60) % 24
#   minutes = minutes % 60
  
#   if minutes < 0
#     hours = (24 - hours) % 24
#     minutes = (60 - minutes) % 60
#   end
  
#   hours_place = sprintf("%02d", hours)
#   minutes_place = sprintf("%02d", minutes)
  
#   "#{hours_place}:#{minutes_place}"
# end

# refactor to use divmod and constants

# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = 1440

# def time_of_day(minutes)
#   change_minutes = minutes % MINUTES_PER_DAY
#   hours, minutes = change_minutes.divmod(60)
#   sprintf("%02d:%02d", hours, minutes)
# end


# p time_of_day(0) == "00:00"
# p time_of_day(-3) == "23:57"
# p time_of_day(35) == "00:35"
# p time_of_day(-1437) == "00:03"
# p time_of_day(3000) == "02:00"
# p time_of_day(800) == "13:20"
# p time_of_day(-4231) == "01:29"

# f.e. use Date/Time and account for day of week ------------

# Rules: midnight = between Saturday and Sunday
SEC_PER_MIN = 60

def time_of_day(minutes)
  start_time = Time.new(2017,11,25, 24,0,0)
  start_time += (SEC_PER_MIN * minutes)
  start_time.strftime("%A %H:%M")

end


p time_of_day(-4231) == "Thursday 01:29"
