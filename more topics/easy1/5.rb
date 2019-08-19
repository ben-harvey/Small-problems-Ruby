require 'pry'
ALPHABET = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
ROTATED = ALPHABET.rotate(13)

input = %[Nqn Ybirynpr
Tenpr Ubccre
Nqryr Tbyqfgvar
Nyna Ghevat
Puneyrf Onoontr
Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
Wbua Ngnanfbss
Ybvf Unvog
Pynhqr Funaaba
Fgrir Wbof
Ovyy Tngrf
Gvz Orearef-Yrr
Fgrir Jbmavnx
Xbaenq Mhfr
Fve Nagbal Ubner
Zneiva Zvafxl
Lhxvuveb Zngfhzbgb
Unllvz Fybavzfxv
Tregehqr Oynapu]

input = input.split(/\n/)

def rotate_letter(letter)
  case letter
  when "a".."z"
    then ROTATED[ALPHABET.index(letter)]
  when "A".."Z"
    then ROTATED[ALPHABET.index(letter.downcase)].upcase
  else
    letter
  end
end

input.each do |name|
  decrypted = name.each_char.reduce('') do |result, char|
    result + rotate_letter(char)
  end
  puts decrypted
end
