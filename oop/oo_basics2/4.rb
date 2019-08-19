class Cat
  def initialize(name)
    @name = name
  end

  def self.generic_greeting
    puts "Hello, I'm a #{name}. "
  end
end

kitty = Cat.new('Sophie')
Cat.generic_greeting() # => Hello, I'm a Cat.

class Cat
  def initialize(test)
    @test = test
  end

  def self.generic_greeting
    puts "Hello, I'm a #{test}. "
  end
end

kitty = Cat.new('Sophie')
Cat.generic_greeting() # => wrong number of arguments (given 0, expected 2..3) (ArgumentError)