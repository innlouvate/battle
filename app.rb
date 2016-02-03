require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/name' do
    # @play = params[:]
    erb(:play)
    @player_1_name = params[:Player_1]
    @player_2_name = params[:Player_2]
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
