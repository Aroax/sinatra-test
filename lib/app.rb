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

get '/cat' do
  "<div style ='border: 3px dashed blue'>
  <img src='https://i.imgur.com/jFaSxym.png'>
  </div>"
end
