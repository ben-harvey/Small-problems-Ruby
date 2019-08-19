class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    "My name is #{name.upcase}."
  end
end

# name = "Fluffy"
# fluffy = Pet.new(name)
# puts fluffy.name
# puts fluffy
# puts fluffy.name
# puts name


name = 42
fluffy = Pet.new(name)
name += 1  # this line points variable name toward a new object. Since numbers
# are immutable object there is no way to modify original object that is passed
# in to the initialize method.  A mutating method call on a a string would have
# different result and change the object referenced by the instance variable.
puts fluffy.name
puts fluffy
puts fluffy.name
puts name
