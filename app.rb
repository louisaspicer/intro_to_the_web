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

get '/cats' do
  "I like cats"
end
