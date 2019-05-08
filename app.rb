require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = Player.new(params[:player1])
    session[:player2] = Player.new(params[:player2])
    redirect to('/play')
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @player2_HP = session[:player2].HP
    erb(:play)
  end

  post '/attack' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    Game.new.attack(@player2)
    @player2_HP = session[:player2].HP
    erb(:attack)
  end

 run! if app_file == $0
end
