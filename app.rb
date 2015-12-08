require 'sinatra'


use Rack::Session::Cookie, :secret => "My session secret which shouldn't be committed to the repo in real life"

get '/' do
  if session[:user]
    "Logged in with user id #{session[:user]}"
  else
    erb :index
  end
end

post '/' do
  if params[:username] == 'hubertfarnsworth' &&
     params[:password] == 'secret'
    session[:user] = 1
    redirect '/'
  else
    'Unrecognized user'
  end
end

get '/logout' do
  session[:user] = nil
  redirect '/'
end
