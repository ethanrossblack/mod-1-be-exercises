# Add the 2 requires you will need here
require "rspec"
require './lib/student'

# MAIN RSPEC TEEST METHODS
# 1. be_an_instance_of - when we want to test that an object can be created
# 2. eq - whe we want ot est a value of a method


# IN EVERY TEST
# 1. Test that the object can exist (be_an_instance_of)
# 2. Test any methods/attributes that exist in that class (eq)

# Student object
# Instance of Student Class


describe Student do
  # test it can exist
  it 'is an instance of student' do
    # write the code to initialize a new student object
    student = Student.new("Penelope")

    expect(student).to be_an_instance_of(Student)
  end
  
  # test it has a name
  it "has a name" do
    student = Student.new("Penelope")

    expect(student.name).to eq("Penelope")
  end
  
  # test it has cookies
  it "has an empty cookies array" do
    student = Student.new("Penelope")

    expect(student.cookies).to eq([])
  end

  # test it can add cookies
  it "can add cookies to the cookies array" do
    student = Student.new("Penelope")

    student.add_cookies("Chocolate Chunk")
    student.add_cookies("Snickerdoodle")

    expect(student.cookies).to eq(["Chocolate Chunk", "Snickerdoodle"])
  end
end
