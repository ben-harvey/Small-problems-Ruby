class Person
  def name=(name)
    @first, @last = name.split
  end

  def name
    "#{@first} #{@last}"
  end

end

person1 = Person.new()
person1.name = 'Jon Smith'
puts person1.name()