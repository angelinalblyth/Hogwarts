require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('./models/student')
also_reload('./models/*')

get '/' do
  erb(:home)
end

get '/students' do
  @students = Student.all()
  erb (:index)
end

get '/students/new' do
  erb(:new)
end

get '/students/:id' do
  @student = Student.find(params[:id])
  erb(:show)
end

post '/students' do
  @student = Student.new( params )
  @student.save()
  erb(:create)
end

get '/houses' do
  @houses = House.all()
  erb (:houses)
end

get '/houses/:id' do
  @house = House.find(params[:id])
  erb(:show_house)
end
