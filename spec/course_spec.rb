require './lib/course'
require './lib/student'

RSpec.describe Course do
 it 'course exists' do
  course = Course.new("Calculus", 2)

  expect(course).to be_instance_of(Course)
 end

end