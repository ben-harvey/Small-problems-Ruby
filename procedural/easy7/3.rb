# input: string
# output: new string, capitalized
# data structure: string, array
# logic: 

# def word_cap(string)
#   string.split.map(&:capitalize).join(' ')
# end



# F.E. ----------

# def word_cap(string)
#   string.split.map do |word|
#     word[0].upcase + word[1..-1].downcase
#   end.join(' ')
# end

def word_cap(string)
  string.split.map do |word|
    word[0].gsub(/[aeiou]/ &:upcase)
  end
end

p word_cap('four score and seven') #== 'Four Score And Seven'
# p word_cap('the javaScript language') == 'The Javascript Language'
# p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
