def triangle(num1, num2, num3)
  angles = [num1, num2, num3]
  case
  when angles.inject(:+) != 180 || angles.include?(0)
    :invalid
  when angles.include?(90)
    :right
  when angles.all? {|angle| angle < 90}
    :acute
  else
    :obtuse
  end
end

p triangle(60,  70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid