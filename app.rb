require 'sinatra'
class DB < Sinatra::Base
set :port, 4000
set :sessions, true
  get '/set' do
    name = request.query_string.split("=")
    session['key']=name[1]

    "Hello #{session['key']}"
  end

  get '/get' do
    "Hello #{session['key']}"
  end
  run! if app_file == $0
end
