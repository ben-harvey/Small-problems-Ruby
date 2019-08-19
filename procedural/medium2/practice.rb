require 'pry'
def initialize_array(length)
  Array.new(length) {[0] * length}

def generate_spiral(length)
  result = initialize_array(length)
  center = length / 2
  col, row = center, center
  result[col][row] = 1
  iterator = 2
  spiral_iterator = center
  catch :array_full do
  loop do
    loop do
      if row < length - spiral_iterator
        row += 1
        result[col][row] = iterator
        throw :array_full if col == 0 && row == (length - 1)
        iterator += 1
       next
      elsif col < length - spiral_iterator
        col += 1
        result[col][row] = iterator
        iterator += 1
        next
      end
      break if col == (length - spiral_iterator) && row == (length - spiral_iterator)
    end

    loop do
      if row > (-1 + spiral_iterator)
        row -= 1
        result[col][row] = iterator
        iterator += 1
        next
      elsif col > (-1 + spiral_iterator)
        col -= 1
        result[col][row] = iterator
        iterator += 1
        next
      end
      break if col == (-1 + spiral_iterator) && row == (-1 + spiral_iterator)
    end
    spiral_iterator -= 1
  end
  end
  result
end

array = generate_spiral(1001)

def sum_diagonals(spiral)
  center = spiral.length / 2
  result = []

  top_iterator = 0
  spiral[0..center].each do |col|
    result << col[top_iterator]
    result << col[-1 - top_iterator] unless col[top_iterator] == col[-1 - top_iterator]
    top_iterator += 1
  end

  bottom_iterator = 1
  spiral[(center + 1)..-1].each do |col|
    result << col[center + bottom_iterator]
    result << col[center - bottom_iterator]
    bottom_iterator += 1
  end
  result.inject(:+)
end

p sum_diagonals(array)


