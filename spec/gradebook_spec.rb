require './lib/gradebook'
require './lib/course'
require './lib/student'

RSpec.describe Gradebook do
 it 'gradebook exists'do
  gradebook = Gradebook.new("Mx Alexander")

  expect(gradebook).to be_instance_of(Gradebook)
 end

 it 'gradebook has an instructor' do
  gradebook = Gradebook.new("Mx Alexander")

  expect(gradebook.instructor).to eq("Mx Alexander")
 end

 it 'gradebook has courses and it defaults to []' do
    gradebook = Gradebook.new("Mx Alexander")

    expect(gradebook.courses).to eq([])
 end

 describe '#add_courses' do
  it 'gradebook can add courses and can list them' do
    gradebook = Gradebook.new("Mx Alexander")
    course1 = Course.new("Calculus", 2)
    gradebook.add_courses(course1)

    expect(gradebook.courses).to eq([course1])
  end
 end
 
 describe '#students_in_courses' do
  it 'gradebook can list the students added to a course' do
    gradebook = Gradebook.new("Mx Alexander")
    course1 = Course.new("Calculus", 2)
    gradebook.add_courses(course1)

    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})

    course1.enroll(student1)
    course1.enroll(student2)

    expect(gradebook.students_in_courses).to eq(course1.students)
  end
 end

 describe '#students_below_2.5' do
  it 'gradebook can list students that have a grade 2.5 or lower in their course' do
    gradebook = Gradebook.new("Mx Alexander")
    course1 = Course.new("Calculus", 2)
    gradebook.add_courses(course1)

    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})

    course1.enroll(student1)
    course1.enroll(student2)

    expect(gradebook.)
  end 
 end
end