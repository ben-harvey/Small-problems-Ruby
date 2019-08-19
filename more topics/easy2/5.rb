=begin as soon as return of block is false, return an array of
remaining el

if empty, return empty array

=end

def drop_while(array)
  idx = 0
  while idx < array.size
    break unless yield(array[idx])
    idx += 1
  end
  array[idx..-1]
end

p drop_while([1, 3, 5, 6]) { |value| value.odd? }#== [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true } == []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == []