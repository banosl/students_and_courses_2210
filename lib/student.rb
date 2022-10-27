class Student
 attr_reader :scores
 def initialize (attributes)
  @name = attributes.fetch(:name)
  @age = attributes.fetch(:age)
  @scores = []
 end 

 def name
  @name
 end

 def age
  @age
 end

 def log_score(score)
  @scores << score
 end

 def grade
  @scores.sum/@scores.count.to_f
 end
end