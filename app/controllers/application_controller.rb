require 'sinatra/base'
require 'pry'
class App < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views/") }

  get '/'  do
    erb :index
  end

  post '/teams' do
    @team=Team.new(name: params[:team][:name], motto: params[:team][:motto])

    heros = params[:team][:heroes]
    @hero1 = Superhero.new(name: heros[0][:name], power: heros[0][:power], bio: heros[0][:bio])
    @hero2 = Superhero.new(name: heros[1][:name], power: heros[1][:power], bio: heros[1][:bio])
    @hero3 = Superhero.new(name: heros[2][:name], power: heros[2][:power], bio: heros[2][:bio])

    erb :team
  end

end
