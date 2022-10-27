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

 def full?
  @students.count >= @capacity
 end

 def enroll(student)
  @students << student
 end
end