vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

# if hash key exists increment value by 1
# if hash entry doesn't exist, create it with key of
# array value and value of 

#START
# GET array of elements
# SET count_hash = {}
# IF count_hash has key equal to array element
#   increment hash value
# ELSE
#   create hash entry with k = array element, v = 1
# PRINT count_hash with formatting

# def count_occurrences(array)
#   count_hash = {}
#   array.each {|x| 
#     if count_hash.has_key?(x)
#       count_hash[x] += 1
#     else
#       count_hash[x] = 1
#     end
#   }
#   count_hash.each {|key, value| puts "#{key} => #{value}"}
# end


# count_occurrences(vehicles)

# refactor to use Array#count


def count_occurrences(array)
  count_hash = {}
  array.each {|x| count_hash[x] = array.count(x)}
  count_hash.each {|k, v| puts "#{k} => #{v}"}
end
  
  count_occurrences(vehicles)
