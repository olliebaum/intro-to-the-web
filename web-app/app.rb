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

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat-form' do
  erb(:form)
end
