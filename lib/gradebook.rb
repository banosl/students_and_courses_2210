class Gradebook
 attr_reader :instructor
 def initialize (instructor)
  @instructor = instructor
  @courses = []
 end

 def courses
    @courses
 end
end