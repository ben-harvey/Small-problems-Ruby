# input: a string argument which contains one or more words
#           -commands
#           -integers
#       that form a program to execute
# output: an integer when command 'PRINT', nothing otherwise
# rules:   -all programs are correct
#          - all arguments are integers
#          - register initialized to zero

# n Place a value n in the "register". Do not modify the stack.
# PUSH Push the register value on to the stack. Leave the value in the register.
# ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
# SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
# MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
# DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
# MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
# POP Remove the topmost item from the stack and place in register
# PRINT Print the register value

# data structure: array

# logic:  set register = 0
#         initialize empty array
#        split inputs string into words
#        case statement for control flow


def minilang(input)
  commands = input.split
  register = 0
  stack = []
  commands.each do |command|
    # binding.pry
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
      register = stack.pop
    when 'PRINT'
      puts register
    else
      register = command.to_i
    end
  end
  # p register
  # p stack
end

# minilang('5 PUSH MOD')
# # # 0

# minilang('5 PUSH 3 MULT PRINT')
# # # 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # # 5
# # # 3
# # # 8

# # minilang('5 PUSH POP PRINT')
# # # 5

#  minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # # 5
# # # 10
# # # 4
# # 7

 minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

 minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

# minilang('-3 PUSH 5 SUB PRINT')
# # 8

 # minilang('6 PUSH')
# # (nothing printed; no PRINT commands)
