require './lib/student'

RSpec.describe Student do

 it 'student exists' do
  student = Student.new({name: "Morgan", age: 21})
  expect(student).to be_instance_of(Student)
 end

end