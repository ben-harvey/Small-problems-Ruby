class Cat
  COLOR = 'purple'

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello, my name is #{@name} and I'm a #{COLOR} cat!"
  end

  end

kitty = Cat.new('Sophie')
kitty.greet