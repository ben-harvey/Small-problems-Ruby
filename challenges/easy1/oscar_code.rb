array_of_strings = "1=A 0=B 10=C 01=D 101=E 010=F 1001=G 0110=H 0011=I 1100=J  1011=K 0111=L 0100=M 1000=N 0000=O 1111=P 10010=Q 01101=R 10101=S 01010=T 11111=U 00000=V 10110=W 01001=X 00001=Y 11110=Z".split

oscars_code = array_of_strings.map {|entry| entry.split('=')}.to_h
oscars_code['111'] = ' '

puts "Welcome to Oscar's code!"
loop do
  puts "Would you like to encode or decode? Please enter 'e' or 'd': "
  answer = nil
  loop do
    answer = gets.chomp.downcase
    break if ['e', 'd'].include?(answer)
    puts "Sorry, please enter 'e' to encode or 'd' to decode."
  end

  case answer
  when 'e'
    puts "Enter the words to encode: "
    to_encode = gets.chomp
    puts to_encode.upcase.chars.map {|letter| oscars_code.key(letter)}.join(' ')
  when 'd'
    oscars_code.to_a.each do |key, value|
      puts "#{key} = #{value}"
    end
    puts "Enter the numbers to decode: "
    to_decode = gets.chomp.split
    puts to_decode.map {|number| oscars_code[number]}.join
  end
  puts "Would you like to play again? Enter 'y' or 'n': "
  response = nil
  loop do
    response = gets.chomp.downcase
    break if ['y', 'n'].include?(response)
    puts "Sorry, please enter 'y' or 'n'"
  end
  break if response == 'n'
end
puts "Thank you for shopping at Ingles!"
# puts answer


