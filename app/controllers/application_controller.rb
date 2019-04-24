require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/team' do
      @team = Team.new(params[:team])
      @heros = params[:team][:members].collect{|member| Superhero.new(member)}
      erb :team
    end


end
