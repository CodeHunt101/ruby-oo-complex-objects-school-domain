class School
  attr_reader :school_name, :roster
  def initialize(school_name, roster = {})
    @school_name = school_name
    @roster = roster
  end

  def add_student(student_name, grade)
    !@roster[grade] ? @roster[grade] = [student_name] : @roster[grade].push(student_name)
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, studentArr|
      @roster[grade] = studentArr.sort
    end
  end
end