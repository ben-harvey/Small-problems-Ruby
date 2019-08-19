items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  # puts "#{items.join(', ')}"
  yield(items)
  puts "Let's start gathering food."
end


gather(items) {|foods| puts "#{foods.join(', ')}"}