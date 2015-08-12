require 'sinatra'
require 'json'

file = File.read('roster.json')
data = JSON.parse(file)

get "/teams" do
  teams = data
  erb :index, locals: { teams: teams }
end

get "/teams/:team_name" do
  teams = data
  erb :show, locals: { teams: teams, team_name: params[:team_name] }
end

set :views, File.join(File.dirname(__FILE__), "views")
set :public_folder, File.join(File.dirname(__FILE__), "public")
