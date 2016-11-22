require 'sinatra'
require 'shotgun'
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "I like Nutella"
end

get '/food' do
  "I like bread"
end

get '/drink' do
  "Whiskey"
end



get '/cat-form' do
  erb :cat_form
end

post '/random-cat' do
  p params
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
