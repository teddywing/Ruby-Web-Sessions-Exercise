require 'sinatra/base'


class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    'POST works'
  end
end
