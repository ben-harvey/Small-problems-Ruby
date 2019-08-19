require 'pry'

# return nil if empty input
# initialize memo object equal to yielding first element to block
# yield each subsequent element to block. if greater than memo, reset
# memo to new value
def max_by(arr)
  return nil if arr.empty?
  memo = arr[0]
  0.upto( arr.size - 1 ) do |idx|
    memo = yield(arr[idx]) > yield(memo) ? arr[idx] : memo
  end
  memo
end


# p max_by([1, 5, 3]) { |value| value + 2 }# == 5
p max_by([1, 5, 3]) { |value| 9 - value }#  == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil