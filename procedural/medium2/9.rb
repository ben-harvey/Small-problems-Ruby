# input: an array of integers or strings
# output: the same array, sorted from min to max
# rules:  array contains at least 2 objects

# logic:

# procedure bubbleSort( A : list of sortable items )
#     n = length(A)
#     repeat
#         swapped = false
#         for i = 1 to n-1 inclusive do
#             /* if this pair is out of order */
#             if A[i-1] > A[i] then
#                 /* swap them and remember something changed */
#                 swap( A[i-1], A[i] )
#                 swapped = true
#             end if
#         end for
#     until not swapped
# end procedure

def bubble_sort!(array)
  n = array.size

  loop do
    swapped = false
    (1..n-1).each do |num|
      if array[num - 1] > array[num]
        array[num - 1], array[num] = array[num], array[num -1]
        swapped = true
      end
    end
    break unless swapped
    n -= 1
  end
  array
end
# array = [5, 3]
# p bubble_sort!(array)
# array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
