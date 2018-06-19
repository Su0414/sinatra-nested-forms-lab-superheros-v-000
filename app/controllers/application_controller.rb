require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
    end

    post '/teams' do
      raise params.inspect

      @team = Team.new(params[:team][:name],
                      params[:team][:motto])
      @team.save

      @hero1 = Members.new(params[:team][:members][0][:name],
                       params[:team][:members][0][:power],
                       params[:team][:members][0][:bio])
      @hero1.save

      @hero2 = Members.new(params[:team][:members][1][:name],
                       params[:team][:members][1][:power],
                       params[:team][:members][1][:bio])
      @hero2.save

      @hero3 = Members.new(params[:team][:members][2][:name],
                       params[:team][:members][2][:power],
                       params[:team][:members][2][:bio])
      @hero3.save

      erb :super_hero
    end

end
