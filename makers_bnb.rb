require 'sinatra/base'

require_relative 'lib/database_connection'
require_relative 'lib/user'
require_relative 'lib/space'

class MakersBnb < Sinatra::Base
  before { @user = User.find(id: session[:id]) if session[:id] }

  configure do
    enable :sessions, :method_override
    set :session_secret, ENV['SESSION_SECRET']
  end

  get '/' do
    erb :index
  end

  post '/users' do
    user = User.create(name: params[:name], email: params[:email],
      password: params[:password])
    session[:id] = user.id
    redirect '/spaces'
  end

  get '/spaces' do
    @spaces = Space.all
    erb :'/spaces/index'
  end

  get '/spaces/new' do
    erb :'spaces/new'
  end

  post '/spaces' do
    Space.create(name: params[:name], description: params[:description],
      price: params[:price])
    redirect '/spaces'
  end
end
