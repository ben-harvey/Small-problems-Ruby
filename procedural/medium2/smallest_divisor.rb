def smallest_divisor(limit)
  number = 1
  range = (1..limit)
  loop do
    result = []
    range.each do |n| # n == 1
      # binding.pry
      result << number % n == 0 #******
    end
    result
    # binding.pry
    # return number if result.all? {|result| result == true}
    # number += 1
  end
end

p smallest_divisor(10)
# smallest_divisor(10) == 2520
