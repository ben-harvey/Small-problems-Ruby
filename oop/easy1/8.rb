# class Pet
#  def initialize(name, age)
#   @name = name
#   @age = age
#  end
# end

# class Cat < Pet
#   def initialize(name, age, color)
#     super(name, age)
#     @color = color
#   end

#   def to_s
#     "My cat #{@name} is #{@age} years old and has #{@color} fur."
#   end
# end

# pudding = Cat.new('Pudding', 7, 'black and white')
# butterscotch = Cat.new('Butterscotch', 10, 'tan and white')
# puts pudding, butterscotch

#FE ===============

class Pet
 def initialize(name, age, color)
  @name = name
  @age = age
  @color = color
 end
end

class Dog < Pet

  # def initialize(name, age)
  #   super(name, age)
  # end
end
class Cat < Pet
  # def initialize(name, age, color)
  #   super(name, age)
  #   @color = color
  # end

  def to_s
    "My cat #{@name} is #{@age} years old and has #{@color} fur."
  end
end

pudding = Cat.new('Pudding', 7, 'black and white')
butterscotch = Cat.new('Butterscotch', 10, 'tan and white')
puts pudding, butterscotch
rex = Dog.new('Rex', 8, ())

# Problem 1 -- a new subclass that doesn't use all 3 parameters defined in Pet
  # Solution: make superclass parameters optional
  # Solution: pass an empty argument





