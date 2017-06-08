require 'pry'

class School
  attr_accessor :roster

  def initialize(school_name)
    @school = school_name
    @roster = {}
  end

  def add_student(name, grade)
    if roster.keys.include? grade
      roster[grade].push(name)
    else
      roster[grade] = []
      roster[grade].push(name)
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    new_roster = {}
    roster.each do |grade, students|
      new_roster[grade] = students.sort
    end
    new_roster
  end


end
