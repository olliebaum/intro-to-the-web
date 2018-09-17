require 'sinatra'

get '/' do
  "hello world"
end


get '/secret' do
  "You saw nothing!"
end

get '/anotherRoute' do
  "Welcome to the other route"
end

get '/cat' do
  erb(:index)
end
