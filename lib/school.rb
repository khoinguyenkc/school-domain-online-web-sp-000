# code here!
require 'pry'
class School
  attr_reader :name, :roster
  @roster = {}
  #had to define the setter ourselves because this is not a standard property, cna't use attr


  def initialize(name)
    @name = name
  end

def add_student(studentname, grade)
  #create new grade if neccessary
  binding.pry
  
  if !@roster.keys.include?(grade)
    @roster[grade] = []
  end

  #add to array
  @roster[grade] << studentname
  end


end

#========

lakeside = School.new('lakeside high')
#lakeside.add_student("Zach Morris", 9)
puts lakeside.name
puts lakeside.roster
