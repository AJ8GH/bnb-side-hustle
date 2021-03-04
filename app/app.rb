require 'sinatra/activerecord'
require 'sinatra/base'
require 'sinatra/flash'


require_relative 'controllers/app_controller'
require_relative 'controllers/registrations_controller'
require_relative 'controllers/sessions_controller'
require_relative 'controllers/spaces_controller'
require_relative 'lib/database_connection'
require_relative 'lib/space'
require_relative 'lib/user'
