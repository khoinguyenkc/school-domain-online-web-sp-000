# code here!

class School
  attr_reader :name, :roster
  @roster = {}
  #had to define the setter ourselves because this is not a standard property, cna't use attr


  def initialize(name)
    @name = name
  end




end

#========
lakeside = School.new('lakeside high')
puts lakeside.name
puts lakeside.roster

school = School.new('Bayside High School')
school.name
