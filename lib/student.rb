class Student
 def initialize (attributes)
  @name = attributes.fetch(:name)
  @age = attributes.fetch(:age)
 end 

 def name
  @name
 end

 def age
  @age
 end
end