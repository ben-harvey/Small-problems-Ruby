=begin

  init(length)
    creates a buffer of input length

instance methods:

  write(object)
    if buffer is empty, writes to first position
    else, writes to empty position
    returns BufferFullException if buffer is full

  write!(object)
    behaves like write if buffer isn't full
    overwrites most recently added element when buffer is full

  read()
    removes and returns oldest element from buffer
    raises BufferEmptyError if empty

  clear()
    empties buffer

rules:
  nil does not populate buffer

data structure:
  array: needs placeholder for empty spots
    when elements are removed, must be replaced to preserve length

algorithm:
  ivar tracks oldest. every time read is called ivar is incremented
  create array of nils of length of input
  eg [nil nil nil]
  write 1  [1 nil nil]  oldest = 0
  write 2  [1 2 nil]    oldest = 0
  read     [nil 2 nil]  oldest = 1
  write 3  [3 2 nil]    oldest = 1

=end

class CircularBuffer
  attr_reader :size
  attr_accessor :buffer

  def initialize(length)
    @buffer = []
    @size = length
  end

  def buffer_full?
    buffer.size == size
  end

  def write(element)
    return if element.nil?
    raise BufferFullException if buffer_full?
    @buffer << element
  end

  def write!(element)
    return if element.nil?
    buffer.shift if buffer_full?
    @buffer << element
  end

  def read
    raise BufferEmptyException if buffer.empty?
    buffer.shift
  end

  def clear
    self.buffer = []
  end

  class BufferError < StandardError
  end

  class BufferFullException < BufferError
  end

  class BufferEmptyException < BufferError
  end
end
