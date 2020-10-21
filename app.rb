require_relative 'config/environment'

class App < Sinatra::Base

    configure do 
        enable :sessions #ENABLES SESSIONS
        set :session_secret, "secret" #SETS SESSION_SECRET
    end

    get '/' do 
        erb :index #RENDERS AN ERB FILE, INDEX.ERB
    end

    post '/checkout' do #CONTROLLER ACTION
        @sessions = session
        item = params["item"]
        @sessions[:item] = item
        #TAKE THE PARAMS FROM THE FORM IN INDEX.ERB AND ADDS IT TO THE SESSION HASH. 
        #THE KEY IS AN ITEM AND THE VALUE SHULD THE BE THE ITEM THE USER ENTERED
        #STORES THE SESSION HASH IN AN INSTANCE VARIABLE
    end

end

