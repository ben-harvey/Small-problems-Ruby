# input: a string
# output: a hash with 3 entries, uppercase, lowercase and other characters with percentage values
# rules: each string has > 1 character
# ds: hash
# logic:
#   - count total chars in string and divide by 100.0
#     -count char type
#     - percentage is (count / total)
#     - add percentage to hash
#     - return hash
      # - keys are symbols
      # if a fraction, to one decimal place. otherwise no decimal place
          # 25.5 = 25.5
          # 25.0 = 25

# def decimal_places(number)
#   number % 1 == 0.0 ? number.to_i : number.round(1)
#   # if number % 1 == 0.0
#   #    number.to_i
#   # else
#   #   number.round(1)
#   # end
# end

# def letter_percentages(string)
#   kv = {
#     lowercase: "a-z",
#     uppercase: "A-Z",
#     neither: "^a-zA-z"
#   }
#   total_chars = (string.size / 100.0)
#   kv.each_with_object(result = {}) do |(key, value), hash|
#     hash[key] = decimal_places(string.count(value) / total_chars)
#   end
#   # result[:lowercase] = decimal_places((string.count("a-z") / total_chars))
#   # result[:uppercase] = decimal_places((string.count("A-Z") / total_chars))
#   # result[:neither] = decimal_places((string.count("^a-zA-z") / total_chars))
#   result
# end

# tidy up the refactor

def decimal_places(number)
  number % 1 == 0.0 ? number.to_i : number.round(1)
end

def letter_percentages(string)
  kv = {
    lowercase: "a-z",
    uppercase: "A-Z",
    neither: "^a-zA-z"
  }
  total_chars = (string.size / 100.0)
  kv.each_with_object(result = {}) do |(key, value), hash|
    hash[key] = decimal_places(string.count(value) / total_chars)
  end
  # result
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }