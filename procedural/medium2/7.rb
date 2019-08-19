# input: an integer representing year
# output: an integer representing number of Friday 13ths in input year
# rules: input > 1752, calendar stays Gregorian

# logic:
#   initialize a Date object on 1st of input year.
#   initialize a counter
#   iterate through each day that year
#   increment counter
#     if day is friday and day is 13
require 'date'

# def friday_13th(date)
#   current_date = Date.new(date)
#   thirteens = 0
#   loop do
#     if current_date.day == 13 and current_date.friday?
#       thirteens += 1
#     end
#     current_date += 1
#     break if current_date.day == 31 && current_date.month == 12
#   end
#   thirteens
# end

# refactor to LS solution

def friday_13th(year)
  thirteenth = Date.new(year, 1, 13)
  count = 0
  12.times do |month|
    count += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  count
end


p friday_13th(2015) #== 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2