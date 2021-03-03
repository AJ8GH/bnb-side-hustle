require 'sinatra/base'
require 'sinatra/flash'

require_relative 'lib/database_connection'
require_relative 'lib/user'
require_relative 'lib/space'

class MakersBnb < Sinatra::Base
  before { @user = User.find(id: session[:id]) if session[:id] }

  configure do
    register Sinatra::Flash
    enable :sessions, :method_override
    set :session_secret, ENV['SESSION_SECRET']
  end

  get '/' do
    erb :index
  end

  get '/sessions/new' do
    erb :'sessions/new'
  end

  post '/sessions/new' do
    user = User.authenticate(email: params[:email], password: params[:password])
    sign_in(user)
  end

  post '/sessions/destroy' do
    session.clear
    redirect '/'
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

  def sign_in(user)
    if user
      session[:id] = user.id
      redirect '/spaces'
    else
      flash[:notice] = 'Incorrect Details'
      redirect '/sessions/new'
    end
  end
end
