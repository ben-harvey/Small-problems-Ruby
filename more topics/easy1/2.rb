def compute(arg)
  if block_given?()
    yield(arg)
  else
    "Does not compute."
  end
end

p compute(5) {|arg| arg + 3 } == 8
p compute('a') {|arg| arg + 'b' } == 'ab'
p compute(9) == 'Does not compute.'