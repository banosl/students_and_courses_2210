require './lib/course'
require './lib/student'

RSpec.describe Course do
 it 'course exists' do
  course = Course.new("Calculus", 2)
  
  expect(course).to be_instance_of(Course)
 end
 
 it 'course has a name' do
  course = Course.new("Calculus", 2)
  
  expect(course.name).to eq("Calculus")
 end

 it 'course has a capacity' do
  course = Course.new("Calculus", 2)
  
  expect(course.capacity).to eq(2)
 end

 it 'course has no students as a default' do
  course = Course.new("Calculus", 2)

  expect(course.students).to eq([])
 end

 describe '#full?' do
  it 'course defaults as false when there are no students' do
   course = Course.new("Calculus", 2)
   
   expect(course.full?).to be(false)
  end
 end

 describe '#enroll(student)' do
  it 'course can enrolls students' do
    course = Course.new("Calculus", 2)
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})

    course.enroll(student1)
    course.enroll(student2)

    expect(course.students).to eq([student1, student2])
    expect(course.full?).to be(true)
  end
 end

 describe '#students_at_or_below_75' do
  it 'course lists the students with a grade equal to or lower than 75' do
   course = Course.new("Calculus", 2)
   student1 = Student.new({name: "Morgan", age: 21})
   student2 = Student.new({name: "Jordan", age: 29})
   student3 = Student.new({name: "Margaret", age: 25})

   course.enroll(student1)
   course.enroll(student2)
   course.enroll(student3)
  
   student1.log_score(75)
   student1.log_score(72)
   student2.log_score(71)
   student2.log_score(65)
   student3.log_score(86)
   student3.log_score(92)

   expect(course.students_at_or_below_75).to eq([student1, student2])
  end
 end
end