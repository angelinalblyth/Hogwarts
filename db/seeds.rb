require_relative('../models/student.rb')
require_relative('../models/house.rb')

require('pry-byebug')

Student.delete_all()

house1= House.new({'name' => 'Griffindor'})
house1.save()
house2= House.new({'name' => 'Hufflepuff'})
house2.save()
house3= House.new({'name' => 'Ravenclaw'})
house3.save()
house4= House.new({'name' => 'Slytherin'})
house4.save()

student1 = Student.new({'first_name' => 'Harry','last_name' => 'Potter','house' => 'Gryffindor','age' => '11'})
student1.save()
student2 = Student.new({'first_name' => 'Luna','last_name' => 'Lovegood','house' => 'Ravenclaw','age' => '10'})
student2.save()
student3 = Student.new({'first_name' => 'Cedric','last_name' => 'Diggory','house' => 'Hufflepuff','age' => '13'})
student3.save()
student4 = Student.new({'first_name' => 'Draco','last_name' => 'Malfoy','house' => 'Slytherin','age' => '11'})
student4.save()

binding.pry()
nil
