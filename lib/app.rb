require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  'Hello!'
end

get '/secret' do
  'Heeeey....'
end

get '/halloween' do
  'boooooooo'
end

get '/cat' do
erb(:index)
end
