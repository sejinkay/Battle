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
"<div style = 'border: dotted red;'>
<img src = http://bit.ly/1eze8aE></div>"
end
