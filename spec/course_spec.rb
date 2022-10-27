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
end