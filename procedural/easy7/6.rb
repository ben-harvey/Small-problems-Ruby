# input: a string
# output: a new string with all alphabetic characters alternating cases.
#   all non-alphabetic characters don't count when toggling the case.
# rules: 
#   explicit: 
#   implicit: what is an alphabetic character
#             first alphabetic character is uppercase
# logic: 
#   1) loop through each character in the string
#   2) if the character is alphabetic, toggle its case, starting with uppercase
#   3) if the character is not alphabetic, skip it. 
#   4) return the new string

# data structure: string

# def staggered_case(string)
#   result = ''
#   upcase = true

#   string.each_char do |character|
#     u = character.method('upcase')
#     d = character.method('downcase')
#     if character =~ /[a-zA-z]/
#       if upcase
#         result << u.call
#       else
#         result << d.call
#       end
#       upcase = !upcase
#     else
#       result << character
#     end
#   end
#   result
# end

def staggered_case(string)
  result = ''
  upcase = true

  string.each_char do |character|
    if character =~ /[a-z]/i
      if upcase
        result << character.upcase
      else
        result << character.downcase
      end
      upcase = !upcase
    else
      result << character
    end
  end
  result
end



p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'