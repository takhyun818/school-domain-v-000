# code here!
class School

  attr_reader :name, :roster

  def initialized(name)
    @name = name
    @roster = {}
  end
end

def add_student(name, grade)
  @roster[grade] ||= []
  @roster[grade] << name
  @roster
end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
