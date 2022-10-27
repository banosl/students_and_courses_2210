require './lib/student'

RSpec.describe Student do

 it 'student exists' do
  student = Student.new({name: "Morgan", age: 21})
  
  expect(student).to be_instance_of(Student)
 end

 it 'student has a name' do
  student = Student.new({name: "Morgan", age: 21})
  
  expect(student.name).to eq("Morgan")
 end

end