# Input: a positive integer n
# Output: print a right triangle to the screen with sides 
#         of n stars
# Rules: hypotenuse runs from upper right to lower left
# Data structures:  String

# Logic: length of string equals Input
#        4 ' ' + 1 * 
#        3 ' ' + 2 * 
#        iterator for * = 1
#        get ' ' by n - iterator

# def triangle(integer)
#   iterator = 1
#   loop do
#     puts "#{' ' * (integer - iterator)}#{'*' * iterator}"
#     break if iterator == integer
#     iterator += 1
#   end
# end

# right angle = lower right

# F.E. ------------------------------

# def triangle(integer)
#   iterator = 1
#   loop do
#     puts "#{'*' * iterator}#{' ' * (integer - iterator)}"
#     break if iterator == 5
#     iterator += 1
#   end
# end

# right angle = lower left

# def triangle(integer)
#   iterator = 5
#   loop do
#     puts "#{'*' * (iterator)}#{' ' * (integer - iterator)}"
#     break if iterator == 0
#     iterator -= 1
#   end
# end

# right angle = upper left 

# def triangle(integer)
#   iterator = 5
#   loop do
#     puts "#{' ' * (integer - iterator)}#{'*' * iterator}"
#     break if iterator == 0
#     iterator -= 1
#   end
# end

# right angle = upper right 


# class PositionError < StandardError
#   def initialize(msg="Invalid position argument. Please enter ul, ur, ll, or lr")
#     super
#   end
# end

# def triangle(integer, position)
#   case position[0].downcase
#   when 't'
#     iterator, break_value, operator = integer, 0, :-
#   when 'b'
#     iterator, break_value, operator = 1, integer, :+
#   else
#     raise PositionError
#   end
  
#   loop do
#     space_string = "#{' ' * (integer - iterator)}"
#     star_string = "#{'*' * iterator}"

#     case position[1].downcase
#     when 'l'
#       line = star_string + space_string
#     when 'r' 
#       line = space_string + star_string
#     else 
#       raise PositionError
#     end

#     puts line
#     break if iterator == break_value
#     iterator = iterator.public_send(operator, 1)
#   end
# end

# refactor to remove input validation

def triangle(integer, position) # position = ['tl', 'tr', 'bl', 'br']
  case position[0]
  when 't'
    iterator, break_value, operator = integer, 0, :-
  when 'b'
    iterator, break_value, operator = 1, integer, :+
  end
  
  loop do
    space_string = "#{' ' * (integer - iterator)}"
    star_string = "#{'*' * iterator}"

    case position[1]
    when 'l'
      line = star_string + space_string
    when 'r' 
      line = space_string + star_string
    end

    puts line
    break if iterator == break_value
    iterator = iterator.public_send(operator, 1)
  end
end

triangle(65, 'bl')
