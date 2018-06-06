require_relative('../models/student.rb')

require('pry-byebug')

Student.delete_all()

student1 = Student.new({'first_name' => 'Angelina','last_name' => 'Blyth','house' => 'Gryffindor','age' => '28'})
student1.save()
student2 = Student.new({'first_name' => 'Grant','last_name' => 'McPhilemy','house' => 'Ravenclaw','age' => '25'})
student2.save()
student3 = Student.new({'first_name' => 'Abi','last_name' => 'Johnston','house' => 'Hufflepuff','age' => '36'})
student3.save()
student4 = Student.new({'first_name' => 'Louise','last_name' => 'Reekie','house' => 'Slytherin','age' => '29'})
student4.save()

binding.pry()
nil
