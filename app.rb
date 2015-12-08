require 'sinatra'


use Rack::Session::Cookie, :secret => "My session secret which shouldn't be committed to the repo in real life"

get '/' do
  # The root route should render the :index template when logged out and the
  # :logged_in template when logged in.

  erb :index
end

post '/' do
  if params[:username] == 'hubertfarnsworth' &&
     params[:password] == 'secret'
    # The user has correctly authenticated. Persist their login status by
    # setting a session key here.

    redirect '/'
  else
    'Unrecognized user'
  end
end

get '/logout' do
  # Unset the session here to log the user out.

  redirect '/'
end
