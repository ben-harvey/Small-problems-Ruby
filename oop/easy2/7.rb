# a class Pet with two parameters, type and name

# a class Owner with one parameter, name
  # has an instance method number_of_pets that returns the number of pets adopted


# a class Shelter
  # has an instance method adopt that takes two p, Owner object and Pet object
    # initializes a Hash with key of Owner.name and value of Pet object

  # has an instance method print_adoptinos that prints above Hash
class Pet
  attr_reader :type, :name
  def initialize(type, name)
    @type = type
    @name = name
  end

  def to_s
     "a #{type} named #{name}"
  end
end

class Owner
  attr_accessor :number_of_pets
  attr_reader :name
  def initialize(name)
    @name = name
    @number_of_pets = 0
  end
end

class Shelter
  attr_reader :adoptions
  def initialize
    @adoptions = Hash.new {|hsh, key| hsh[key] = []}
  end

  def adopt(owner, pet)
    owner.number_of_pets += 1
    @adoptions[owner.name] << pet
  end

  def print_adoptions
    @adoptions.each do |key, value|
      puts "#{key} has adopted the following pets:"
      value.each do |pet|
        puts pet
      end
      puts ''
    end
  end

end



butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')
p phanson.number_of_pets()

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)

shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."

# P Hanson has adopted the following pets:
# a cat named Butterscotch
# a cat named Pudding
# a bearded dragon named Darwin

# B Holmes has adopted the following pets:
# a dog named Molly
# a parakeet named Sweetie Pie
# a dog named Kennedy
# a fish named Chester

# P Hanson has 3 adopted pets.
# B Holmes has 4 adopted pets.