
class Person
  attr_accessor :secret
  def initialize
    @secret = "Shh.."

  end
end


person1 = Person.new
puts person1.secret()
person1.secret = "Shh..it's a secret!"
puts person1.secret