require 'sinatra'
require 'sinatra/activerecord'
require './models/student'
require './models/oleg_game'
require './models/author'
require './models/category'
require './models/game_image'
require './models/pioneer'
require './models/solar_system_object'
require './models/team'
require './models/best_player'

set :database, "sqlite3:ny.sqlite3"

get '/' do
  @students = Student.all
  haml :'students/index'
end