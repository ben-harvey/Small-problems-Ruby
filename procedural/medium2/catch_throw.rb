catch :test do
  n = 1
  loop do
    p n
    n += 1
    throw :test if n == 10
  end
end

