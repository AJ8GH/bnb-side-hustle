class MakersBnb < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/users' do
    user = User.create(name: params[:name], email: params[:email],
      password: params[:password])
    session[:id] = user.id
    redirect '/spaces'
  end
end
