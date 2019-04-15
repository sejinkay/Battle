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

get '/random-cat' do
@cat_name = ["Amigo", "Oscar", "Viking"].sample
erb(:index)
end

post '/named-cat' do
  p params
  @cat_name = params[:name]
  erb(:index)
end

get '/form' do
  erb(:form)
end
