require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secret, "123456789"
    end

    get '/' do
        @session = session
        erb :index
    end

    post '/checkout' do
        session["item"] = params["item"]
        @session = session
    end  


end