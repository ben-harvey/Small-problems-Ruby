module Walkable
  def walk
      puts "#{name} #{gait} forward."
    end
end

class Person
  include Walkable

  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    'strolls'
  end
end

class Cat
  include Walkable

  attr_reader :name

  def initialize(name)
   @name = name
  end

  private

  def gait
    'saunters'
  end
end

class Cheetah
  include Walkable

  attr_reader :name

  def initialize(name)
   @name = name
  end

  private

  def gait
    'saunters'
  end
end

class Noble
  include Walkable

  attr_reader :title

  def initialize(name, title)
    @name = name
    @title = title
  end

  def name
    "#{@title} #{@name}"
  end

  def gait
    'struts'
  end
end

mike = Person.new("Mike")
mike.walk
# => "Mike strolls forward"

kitty = Cat.new("Kitty")
kitty.walk
# => "Kitty saunters forward"

flash = Cheetah.new("Flash")
flash.walk
# => "Flash runs forward"

byron = Noble.new("Byron", "Lord")
p byron.walk
# => "Lord Byron struts forward"
byron.name
# => "Byron"
byron.title
# => "Lord"