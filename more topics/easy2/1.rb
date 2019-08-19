def step(start, stop, step)
  start.step(by: step, to: stop) {|n| yield n}
end

p step(1, 10, 3) { |value| puts "value = #{value}" }