=begin
instance methods:

  to_h: returns hash rep of school
    input: n/a
    output: a hash
      key: integer rep each grade with at least one student
      value: array of strings rep students names
      * hash keys and values are sorted

  add(a, b): adds students to school
    input: two args
      a string rep name
      an integer rep grade number
    output: n/a

  grade(a)
    input: an integer rep grade number
    output: an array of students in that grade
    * returns empty array if no students

algorithm:
  to_h shouldn't return empty grades, but grade needs to recognize empty
  grade and return empty array
=end

class School
  attr_reader :school

  def initialize
    @school = Hash.new { |hash, key| hash[key] = [] }
  end

  def to_h
    school.sort.to_h.transform_values(&:sort)
  end

  def add(name, grade)
    school[grade] << name
  end

  def grade(grade)
    school[grade]
  end
end
