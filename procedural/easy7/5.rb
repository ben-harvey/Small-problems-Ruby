# input: string
# output: new string with every other char capitalized
# data structures: string, array
# logic: each with index, upcase all, swapcase if index.odd?

# def staggered_case(strind)
#   result = []
#   string.upcase.chars.each_with_index do |char, idx|
#     if idx.odd?
#       result << char.swapcase
#     else
#       result << char
#     end
#   end
#   result.join
# end



# p  staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS') == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'


def staggered_case(string, up_or_down = 'up')
  result = []
  if up_or_down == 'up'
    string.upcase.chars.each_with_index do |char, idx|
      if idx.odd?
        result << char.swapcase
      else
        result << char
      end
    end
  elsif up_or_down == 'down'
    string.downcase.chars.each_with_index do |char, idx|
      if idx.odd?
        result << char.swapcase
      else
        result << char
      end
    end
  end
  result.join
end

p  staggered_case('I Love Launch School!')
p  staggered_case('I Love Launch School!', 'down')
