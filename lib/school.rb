require 'pry'
# code here!
class School 
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {} 
  end

  def add_student(student, grade)
    if @roster[grade] == nil 
      @roster[grade] = []
    end 
    @roster[grade] << student
  end

  def grade(grade_of_student)
    @roster[grade_of_student]
  end

  def sort
    @roster.each do |grade, students|
      @roster[grade] = students.sort
    end
  end
  ## Question For the #sort method above, why is the original
  ## @roster not returned. This will help clarify some things! 
  ## Apparently you can make alterations on the original enumerable
  ## through using each, even though this sounds simimlar to the 
  ## #collect/map methods. Please clarify this. Thanks :D
end
