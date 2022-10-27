class Course
 attr_reader :name
 def initialize (name, capacity)
  @name = name
  @capacity = capacity
  @students = []
 end

 def capacity
    @capacity
 end

 def students
    @students
 end
end