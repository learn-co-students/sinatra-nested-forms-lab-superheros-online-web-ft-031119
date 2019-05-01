require 'sinatra/base'

class App < Sinatra::Base
    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      
      erb :super_hero
    end

    post '/teams' do

      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])

      params[:team][:members].each do |member|
        member = Member.new(name: member[:name], power: member[:power], bio: member[:bio])
        member.team = @team
        @team.members << member
      end

      erb :team
    end
end
