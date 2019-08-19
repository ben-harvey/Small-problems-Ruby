=begin
  class FixedArray
    init method takes 1 integer parameter. length
    init method creates an nil array of length

    inst. method to_a
      returns an array object representation

    inst. method []
      returns element at index argument to method
      resturns IndexError if index is out of bounds
=end


class FixedArray
  attr_accessor :array
  def initialize(length)
    @array = create_array(length)
  end

  def create_array(n)
    result = []
    n.times do
      result << nil
    end
    result
  end

  def to_a
    @array.clone
  end

  def to_s
    @array.clone
  end

  def [](index)
    @array.fetch(index)
  end

  def []=(index, value)
    @array[index] = value
  end

end
fixed_array = FixedArray.new(5)
puts fixed_array[3] == nil
puts fixed_array.to_a == [nil] * 5

fixed_array[3] = 'a'
puts fixed_array[3] == 'a'
puts fixed_array.to_a == [nil, nil, nil, 'a', nil]

fixed_array[1] = 'b'
puts fixed_array[1] == 'b'
puts fixed_array.to_a == [nil, 'b', nil, 'a', nil]

fixed_array[1] = 'c'
puts fixed_array[1] == 'c'
puts fixed_array.to_a == [nil, 'c', nil, 'a', nil]

fixed_array[4] = 'd'
puts fixed_array[4] == 'd'
puts fixed_array.to_a == [nil, 'c', nil, 'a', 'd']
puts fixed_array.to_s #== '[nil, "c", nil, "a", "d"]'

puts fixed_array[-1] == 'd'
puts fixed_array[-4] == 'c'

begin
  fixed_array[6]
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[-7] = 3
  puts false
rescue IndexError
  puts true
end