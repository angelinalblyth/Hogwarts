require_relative('../db/sql_runner')

class House

  attr_reader :id
  attr_accessor :name

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @founder = options['founder']
    @colours = options['colours']
    @animal = options['animal']
    @traits = options['traits']
    @head = options['head']
    @ghost = options['ghost']
    @common_room = options['common_room']
  end

  def save()
    sql = "INSERT INTO houses(name, founder, colours, animal, traits, head, ghost, common_room) VALUES ($1, $2, $3, $4, $5, $6, $7, $8) RETURNING id"
    values = [@name, @founder, @colours, @animal, @traits, @Headless, @ghost, @common_room]
    new_house = SqlRunner.run(sql, values).first
    @id = new_house['id'].to_i
  end


end
