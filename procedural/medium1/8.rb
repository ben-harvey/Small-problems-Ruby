input: an index of a fibonacci number
output: that fibonacci number
rules: use recursion
ds: integer
logic:


def fibonacci(n)
  return 1 if n == 2 || n == 1
  fibonacci(n - 1) + fibonacci(n - 2)
end

p fibonacci(120)