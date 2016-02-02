require 'sinatra/base'

class Battle < Sinatra::Base
enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player1_name] = params[:player1_name]
    session[:player2_name] = params[:player2_name]
    redirect '/play'
  end

  get '/play' do
    @player1_name = session[:player1_name]
    @player1_hp   = 100
    @player2_name = session[:player2_name]
    @player2_hp   = 100
    @confirmation = session[:attack_confirmation]
    erb :play
  end

  post '/play' do
    session[:attack_confirmation] = true
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
