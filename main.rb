require 'sinatra'
require 'sinatra/activerecord'
require './models/student'

set :database, "sqlite3:ny.sqlite3"

get '/' do
  @students = Student.all
  haml :'students/index'
end