# class Transform that accepts string as parameter
# has an uppercase instance method
# has a lowercase class method


class Transform
  def initialize(string)
    @string = string
  end

  def uppercase
    @string.upcase
  end

  def self.lowercase(string)
    string.downcase
  end
end









my_data = Transform.new('abc')
puts my_data.uppercase  # ABC
puts Transform.lowercase('XYZ') #xyz

