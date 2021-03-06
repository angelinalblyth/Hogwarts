require_relative('../models/student.rb')
require_relative('../models/house.rb')

require('pry-byebug')

House.delete_all()
Student.delete_all()

house1= House.new({
  'name' => 'Griffindor',
  'founder' => 'Godric Gryffindor',
  'colours' => 'Scarlet and gold',
  'animal' => 'Lion',
  'traits' => 'Brave',
  'teacher' => 'Minerva McGonagall',
  'ghost' => 'Nearly Headless Nick',
  'common_room' => 'Gryffindor Tower'
  })
house1.save()
house2= House.new({
  'name' => 'Hufflepuff',
  'founder' => 'Helga Hufflepuff',
  'colours' => 'Yellow and black',
  'animal' => 'Badger',
  'traits' => 'Loyal',
  'teacher' => 'Pomona Sprout',
  'ghost' => 'Fat Friar',
  'common_room' => 'Hufflepuff Basement'
  })
house2.save()
house3= House.new({
  'name' => 'Raveclaw',
  'founder' => 'Rowena Ravenclaw',
  'colours' => 'Blue and bronze',
  'animal' => 'Eagle',
  'traits' => 'Wise',
  'teacher' => 'Horace Slughorn',
  'ghost' => 'Grey Lady',
  'common_room' => 'Ravenclaw Tower'
  })
house3.save()
house4= House.new({
  'name' => 'Slytherin',
  'founder' => 'Salazar Slytherin',
  'colours' => 'Green and silver',
  'animal' => 'Snake',
  'traits' => 'Cunning',
  'teacher' => 'Severus Snape',
  'ghost' => 'Bloody Baron',
  'common_room' => 'Slytherin Dungeon'
  })
house4.save()


student1 = Student.new({'first_name' => 'Harry','last_name' => 'Potter','house_id' => house1.id ,'age' => '11'})
student1.save()
student2 = Student.new({'first_name' => 'Luna','last_name' => 'Lovegood','house_id' => house3.id,'age' => '10'})
student2.save()
student3 = Student.new({'first_name' => 'Cedric','last_name' => 'Diggory','house_id' => house2.id,'age' => '13'})
student3.save()
student4 = Student.new({'first_name' => 'Draco','last_name' => 'Malfoy','house_id' => house4.id,'age' => '11'})
student4.save()

binding.pry()
nil
