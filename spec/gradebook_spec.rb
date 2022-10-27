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
end