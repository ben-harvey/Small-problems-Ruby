=begin
create range between lowest and highest numbers
for each number in range: check if number is in argument
  if yes, next
  if not, push to solution
=end


def missing(array)
  check = (array[0]..array[-1]).to_a
  result = []
  check.each do |num|
    result << num unless array.include?(num)
  end
  result
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []