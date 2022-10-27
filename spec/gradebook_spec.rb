require './lib/gradebook'
require './lib/course'
require './lib/student'

RSpec.describe Gradebook do
 it 'gradebook exists'do
  gradebook = Gradebook.new(instructor)

  expect(gradebook).to be_instance_of(Gradebook)
 end
end