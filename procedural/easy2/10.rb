# array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
# initializes variable array1 pointing to array with values in parentheses

# array2 = []
# initializes variable array2 pointing to empty array

# array1.each { |value| array2 << value }
# iterates through each value in array1, passing it in to block parameter
# value.  block appends exact copies of each value to array 2

# array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
# iterates through each value in array1, passing it in to block parameter
# value. block destructively upcases values starting with C or S

# puts array2
# prints array2 ["Moe", "Larry", "CURLY", "SHEMP", "Harpo", "CHICO", "Groucho", "Zeppo"] 