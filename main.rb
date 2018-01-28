require 'sinatra'
require 'sinatra/activerecord'
require './models/student'
require './models/oleg_game'
require './models/author'
require './models/category'
require './models/game_image'
require './models/pioneer'
require './models/pioneer_image'
require './models/solar_system_object'
require './models/solar_system_object_image'
require './models/team'
require './models/best_player'
require './models/team_image'
require './models/best_player_image'

set :database, "sqlite3:ny.sqlite3"

get '/' do
  @students = Student.all
  haml :'students/index'
end

get /\/(\d+)/ do |id |
  id = _id.to_i
  @student = Student.find_by_id(student_id)
  if id == 4 # Oleg B.
    @o_gs = OlegGame.includes(:author, :categories, :game_images).all
    haml :'oleg/games'
  elsif id == 3
    @a_f = AlekseyFootball.includes(:team, :best_player_images).all
    haml :'aleksey/football'
  elsif id == 2

  elsif id == 1


  else
    redirect '/'
  end

end