=begin description
   throw error when:

   an unexpected item is present in the string,
   a required stack value is not on the stack when it should be
       (the stack is empty).
=end
class InvalidToken < RuntimeError
end

class EmptyStack < RuntimeError
end

class Minilang
  def initialize(string)
    @string = string
  end

  def validate_number(string)
    string.to_i.to_s == string
  end

  def eval
    commands = @string.split
    register = 0
    stack = []
    commands.each do |command|
      if validate_number(command)
        register = command.to_i
        next
      end
      case command
      when 'PUSH'
        stack << register
      when 'ADD'
        register += stack.pop
      when 'SUB'
        register -= stack.pop
      when 'MULT'
        register *= stack.pop
      when 'DIV'
        register /= stack.pop
      when 'MOD'
        register %= stack.pop
      when 'POP'
        raise EmptyStack, 'empty stack!' if stack.empty?
        register = stack.pop
      when 'PRINT'
        puts register
      else
        raise InvalidToken, "invalid token: #{command}"
      end
    end
  end
end

# Minilang.new('PRINT').eval
# # # 0

# Minilang.new('5 PUSH 3 MULT PRINT').eval
# # # 15

# Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# # # 5
# # # 3
# # # 8

# Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# # 10
# # 5

# Minilang.new('5 PUSH POP POP PRINT').eval
# Empty stack!

# Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# # 6

# Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# # 12

Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB

# Minilang.new('-3 PUSH 5 SUB PRINT').eval
# # 8

# Minilang.new('6 PUSH').eval
# # (nothing printed; no PRINT commands)