require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  "hello!"
end

get '/secret' do
  "ssssshhhhhh, it's a secret! You can't know it."
end

get '/baba' do
  "booey"
end

get '/random-cat' do
  @name = ['Amigo', 'Misty', 'Peanut'].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/form' do
  erb{:form}
end

get '/cat-form' do
  erb :form
end
