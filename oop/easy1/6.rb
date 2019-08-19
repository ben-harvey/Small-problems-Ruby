class Car
  attr_accessor :milage

  def initialize
    @milage = 0
  end

  def increment_milage(miles)
    total = milage + miles
    self.milage = total
  end

  def print_milage
    puts milage
  end
end

car = Car.new()
car.milage = 5000
car.increment_milage(678)
car.print_milage()