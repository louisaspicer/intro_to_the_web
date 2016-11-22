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

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  @surname = params[:surname]
  erb(:index)
end

get '/cat' do
  "Hello " + params[:name] + " " + params[:surname]
end
