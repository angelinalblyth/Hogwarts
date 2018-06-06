require_relative('../db/sql_runner')

class House

  attr_reader :id
  attr_accessor :name, :founder, :colours, :animal, :traits, :teacher, :ghost, :common_room

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @founder = options['founder']
    @colours = options['colours']
    @animal = options['animal']
    @traits = options['traits']
    @teacher = options['head']
    @ghost = options['ghost']
    @common_room = options['common_room']
  end

  def save()
    sql = "INSERT INTO houses(name, founder, colours, animal, traits, teacher, ghost, common_room) VALUES ($1, $2, $3, $4, $5, $6, $7, $8) RETURNING id"
    values = [@name, @founder, @colours, @animal, @traits, @Headless, @ghost, @common_room]
    new_house = SqlRunner.run(sql, values).first
    @id = new_house['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM houses"
    houses = SqlRunner.run(sql)
    result = houses.map {|house| House.new(house)}
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM houses"
    SqlRunner.run(sql)
  end

  def update()
    sql = "UPDATE houses SET (name, founder, colours, animal, traits, teacher, ghost, common_room) = ($1, $2, $3, $4, $5, $6, $7, $8) WHERE id = $9"
    values = [@name, @founder, @colours, @animal, @traits, @teacher, @ghost, @common_room, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM houses WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.find( id )
    sql = "SELECT * FROM houses WHERE id = $1"
    value = [id]
    house = SqlRunner.run(sql, value)
    result = House.new( house.first )
    return result
  end



end
