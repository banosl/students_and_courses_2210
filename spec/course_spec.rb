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
end