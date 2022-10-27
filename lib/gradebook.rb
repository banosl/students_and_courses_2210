class Gradebook
 attr_reader :instructor
 def initialize (instructor)
  @instructor = instructor
  @courses = []
 end

 def courses
  @courses
 end

 def add_courses(course)
  @courses << course
 end

 def students_in_courses
  list = @courses.map do |course|
   course.students
  end
  list.flatten
 end
end