require_relative('../db/sql_runner')

class House

  attr_reader :id
  attr_accessor :name

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO houses(name) VALUES ($1) RETURNING id"
    values = [@name]
    new_house = SqlRunner.run(sql, values).first
    @id = new_house['id'].to_i
  end


end
