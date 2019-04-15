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
@cat_name = ["Amigo", "Oscar", "Viking"].sample
erb(:index)
end
