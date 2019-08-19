require 'pry'
# def zip(arr1, arr2)
#   result = []
#   idx = 0
#   (0..(arr1.size - 1)).each do |idx|
#     result << [arr1[idx], arr2[idx]]
#   end
#   result
# end

def zip(arr1, arr2)
  arr1.each_with_index.with_object([]) do |(el, idx), arr|
    arr << [el, arr2[idx]]
  end
end




p zip([1, 2, 3], [4, 5, 6])# == [[1, 4], [2, 5], [3, 6]]