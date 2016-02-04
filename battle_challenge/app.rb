require 'sinatra/base'
require './lib/player'


class Battle < Sinatra::Base
enable :sessions


  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    @player1_points = $player_1.hp
    @player2_points = $player_2.hp
    erb(:play)
  end

  get '/fight' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    $player_1.attack($player_2)
    erb(:fight)
  end


      # # start the server if ruby file executed directly
      run! if app_file == $0
end
