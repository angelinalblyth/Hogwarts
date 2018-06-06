require_relative('../db/sql_runner')

class Student

  attr_reader :id
  attr_accessor :first_name, :last_name, :house_id, :age

  def initialize(options)
    @id = options['id'].to_i
    @first_name = options['first_name']
    @last_name = options['last_name']
    @age = options['age'].to_i
    @house_id = options['house_id'].to_i
  end

  def full_name()
    return "#{first_name} #{last_name}"
  end

  def save()
    sql = "INSERT INTO students(first_name, last_name,age, house_id) VALUES ($1, $2, $3, $4) RETURNING id"
    values = [@first_name, @last_name, @age, @house_id]
    new_student = SqlRunner.run(sql, values).first
    @id = new_student['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM students"
    students = SqlRunner.run(sql)
    result = students.map {|student| Student.new(student)}
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM students"
    SqlRunner.run(sql)
  end

  def update()
    sql = "UPDATE students SET (first_name, last_name,age, house_id) = ($1, $2, $3, $4) WHERE id = $5"
    values = [@first_name, @last_name, @age, @house_id, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM students WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.find( id )
    sql = "SELECT * FROM students WHERE id = $1"
    value = [id]
    student = SqlRunner.run(sql, value)
    result = Student.new( student.first )
    return result
  end

  def find_house()
    sql = "SELECT students.*, houses.name FROM students INNER JOIN houses ON students.house_id = houses.id;"
    value = [:id]
    house = SqlRunner.run(sql, values)
    result = House.new(house)
    return result
  end


end
