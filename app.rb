require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    @player_1_name = $Player1.name
    @player_2_name = $Player2.name
    erb(:play)
  end

  post '/names' do
    $Player1 = Player.new(params[:Player_1])
    $Player2 = Player.new(params[:Player_2])
    redirect to('/play')
  end

  get '/attack' do
    @player_1_name = $Player1.name
    @player_2_name = $Player2.name
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
