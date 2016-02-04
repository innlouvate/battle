require 'sinatra/base'
require './lib/player'
require './lib/game'


class Battle < Sinatra::Base
enable :sessions


  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_1 = Player.new(params[:player_1])
    @player_2 = Player.new(params[:player_2])
    $game = Game.new(@player_1, @player_2)
    redirect '/play'
  end

  get '/play' do
    @player_1 = $game.player_1.name
    @player_2 = $game.player_2.name
    @player_turn = $game.turn.name
    @player1_points = $game.player_1.hp
    @player2_points = $game.player_2.hp
    erb(:play)
  end

  get '/fight' do
    @player_1 = $game.player_1.name
    @player_2 = $game.player_2.name
    @opponent = $game.opponent.name
    $game.attack($game.opponent)
    $game.switch_turn
    erb(:fight)
  end


      # # start the server if ruby file executed directly
      run! if app_file == $0
end
