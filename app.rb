require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

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
    @player1 = $player1
    @player2 = $player2
    @player2_HP = $player2.HP
    erb(:play)
  end

  post '/attack' do
    @player1 = $player1
    @player2 = $player2
    Game.new.attack(@player2)
    @player2_HP = $player2.HP
    erb(:attack)
  end

 run! if app_file == $0
end
