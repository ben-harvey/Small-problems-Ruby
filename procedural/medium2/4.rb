# input: a string
# output: a boolean true if balanced parentheses, false if not
# rules: balanced pairs must start with (
#
#   -
#     - (()))( vs ((()))
        # pairs
#         ((
#           ()
#         ))

# #      ( ( ) ) ) )
#           pairs: ()
#                   ()
#                    ))
       # 0 1 2 3 4 5
       # 0 5 1 4 2 3
# ds: string
# logic:
#   -count is even
    # - each ( has a matching )
    # pair has more than one of each
require 'pry'

def balanced?(string)
  stripped = string.delete("^()")
  return false if stripped.size.odd?
  return true if stripped.empty?
  stripped[0] == '(' && stripped[-1] == ')'
  # binding.pry
end

# Maddie's solution

# def balanced?(str)
#   parens = str.chars.select { |chr| chr =~ /[()]/}
#   return false if parens.size.odd?
#   parens.first != ')' && parens.last != '('
# end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
 p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
