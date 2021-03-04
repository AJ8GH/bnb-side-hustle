class MakersBnb < Sinatra::Base
  before { @user = User.find(id: session[:id]) if session[:id] }

  configure do
    register Sinatra::Flash, Sinatra::ActiveRecordExtension
    enable :sessions, :method_override
    set :session_secret, ENV['SESSION_SECRET']
    set :root, File.dirname(File.expand_path('..', __FILE__))
    set :public_folder, Proc.new { File.join(root, '../public') }
  end
end
