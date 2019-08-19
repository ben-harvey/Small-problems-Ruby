require 'pry'

class CircularQueue
  attr_accessor :buffer, :history

  def initialize(size)
    @size = size
    self.buffer = []
    initialize_buffer
    @history = []
  end

  def initialize_buffer
    @size.times do
      buffer << nil
    end
  end

  def add_to_history(idx, obj)
    history << [idx, obj]
  end

  def next_idx
    next_idx = history.last[0] + 1
      if next_idx == buffer.size
        return 0
      else
        return next_idx
      end
  end

  def remove_from_history(obj, idx)
    history.delete([idx, obj])
  end

  def enqueue(obj)
    if buffer.all? {|el| el.nil?}
      idx = 0
      buffer[idx] = obj
      add_to_history(idx, obj)
    else
      idx = next_idx
      unless buffer[idx] == nil
        to_remove = buffer[idx]
        remove_from_history(to_remove, idx)
      end
      buffer[idx] = obj
      add_to_history(idx, obj)
    end
  end

  def dequeue
    return nil if buffer.all? {|el| el.nil?}
    remove_idx = history.first[0]
    to_return = buffer[remove_idx]
    buffer[remove_idx] = nil
    history.shift
    to_return
  end
end

queue = CircularQueue.new(3)

puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2
p queue.buffer()

queue.enqueue(5)
p queue.buffer()

queue.enqueue(6)
p queue.buffer()

queue.enqueue(7)
p queue.buffer()
p queue.history()

puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil
