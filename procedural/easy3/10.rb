
  # Logic:  number.to_s.reverse == number.to_s

def palindromic_number?(number)
  if string 
    number.to_s.reverse == number.to_s
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(005) == true

