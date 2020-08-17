# code here!
require 'pry'
class School
  attr_reader :name
  #@roster = {}
  #had to define the setter ourselves because this is not a standard property, cna't use attr
  #super interesting: if i put @roster here, the method won't be able to access it...
  #i've seen people putting class constants here, but i guess not instance variables....
  #note: if we use attr stuff you're creating methods that WILL create new instance variables ONLY when the methods are called
  #they're not created at first.

  def initialize(name)
    @name = name
    @roster = {}
    #had to define the setter ourselves because this is not a standard property, cna't use attr

  end

def add_student(studentname, grade)
  #create new grade if neccessary
  if !@roster.keys.include?(grade)
    @roster[grade] = []
  end

  #add to array
  @roster[grade] << studentname
  end


end

#========

lakeside = School.new('lakeside high')
lakeside.add_student("Zach Morris", 9)
puts lakeside.name
puts lakeside.roster
