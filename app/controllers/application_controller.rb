require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
    end

    post '/teams' do
      # @team = Team.new(params: [:team])
      # params[:team][:members].each do |hero|
      #   Hero.new(hero)
      # end
      # @super_heroes = Hero.all


      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      members = params[:team][:members]
      @super_heroes = members.collect do |member_params|
        Superhero.new({name: member_params[:name], power: member_params[:power], bio: member_params[:bio]})
      end
      erb :super_hero
    end


end
