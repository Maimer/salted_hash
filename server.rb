require 'sinatra'

use Rack::Session::Cookie, :key => 'example.session',
                           :domain => 'example.com',
                           :path => '/',
                           :expire_after => 60, # in seconds
                           :secret => ENV['SECRET_TOKEN']

get '/' do
  if # check for auth
    erb :index
  else
    redirect '/login/?'
  end
end

get '/login/?' do

  erb :login
end

