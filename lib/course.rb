class Course
 attr_reader :name
 def initialize (name, capacity)
  @name = name
  @capacity = capacity
 end

 def capacity
    @capacity
 end
end