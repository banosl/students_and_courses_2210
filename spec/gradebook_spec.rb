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
  it 'gradebook can add courses' do
    gradebook = Gradebook.new("Mx Alexander")
    course1 = Course.new("Calculus", 2)
    gradebook.add_courses(course1)

    expect(gradebook.courses).to eq([course1])
  end
 end
end