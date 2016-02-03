require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    @player1 = params[:player_1]
    @player2 = params[:player_2]
    erb(:play)

  end
      # # start the server if ruby file executed directly
      run! if app_file == $0
end
