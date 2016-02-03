require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    @player_1_name = session['player_1_name']
    @player_2_name = session['player_2_name']
    erb(:play)
  end

  post '/names' do
    session['player_1_name'] = params[:Player_1]
    session['player_2_name'] = params[:Player_2]
    redirect to('/play')
  end

  get '/attack' do
    @player_1_name = session['player_1_name']
    @player_2_name = session['player_2_name']
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
