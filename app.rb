require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base
  enable :sessions
#   get '/' do
#    "Testing infrastructure working!"
#  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect to('/play')
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    @player2_HP = 100
    erb(:play)
  end

  post '/attack' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb(:attack)
  end

 run! if app_file == $0
end
