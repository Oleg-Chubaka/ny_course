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
require './models/team'
require './models/best_player'

set :database, "sqlite3:ny.sqlite3"

get '/' do
  @students = Student.all
  haml :'students/index'
end

get /\/(\d+)/ do |id|
  id = id.to_i
  @student = Student.find_by_id(id)
  if id == 4 # Oleg B.
    @o_gs = OlegGame.includes(:author, :categories, :game_images).all
    haml :'oleg/games'
  elsif id == 3

  elsif id == 2

  elsif id == 1
    @sol_sys_obj = SolarSystemObject.includes(:pioneer).all
    haml :'alex/cosmos'
  else
    redirect '/'
  end

end