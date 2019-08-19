# Input: a float that represents an angle
# Output: a string that represents input in degrees, minutes and seconds
# Rules:  degree symbol for degrees
#         single quote for minutes
#         double quote for seconds
#         1 degree = 60 minutes
#         1 minute = 60 seconds
          
# Data structures: floats, string

# Algorithm:  use (x - x.to_i).round(2) to get decimal remainder  
#             if remainder > 0, repeat

require 'pry'

MINUTES_IN_DEGREE = 60
SECONDS_IN_MINUTE = 60
DEGREE = "\xC2\xB0"

def mantissa(number)
  (number - number.to_i).round(5)
end

def dms_format(degrees, minutes, seconds)
  "#{degrees}#{DEGREE}#{sprintf("%02d", minutes.to_i)}'#{sprintf("%02d", seconds.to_i)}\""
end

def dms(angle)
  degrees = angle.to_i
  degree_mantissa = mantissa(angle)
  minutes = degree_mantissa * MINUTES_IN_DEGREE
  minutes_mantissa = mantissa(minutes)
  seconds = minutes_mantissa * SECONDS_IN_MINUTE
  dms_format(degrees, minutes, seconds)
end
  
p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

