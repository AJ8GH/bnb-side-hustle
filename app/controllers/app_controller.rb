require 'sinatra/base'
require 'sinatra/flash'

require_relative '../lib/database_connection'
require_relative 'registrations_controller'
require_relative 'sessions_controller'
require_relative 'spaces_controller'
require_relative '../lib/user'
require_relative '../lib/space'

class MakersBnb < Sinatra::Base
  before { @user = User.find(id: session[:id]) if session[:id] }

  configure do
    register Sinatra::Flash
    enable :sessions, :method_override
    set :session_secret, ENV['SESSION_SECRET']
    set :root, File.dirname(File.expand_path('..', __FILE__))
    set :public_folder, Proc.new { File.join(root, '../public') }
  end
end
