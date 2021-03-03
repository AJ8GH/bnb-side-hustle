require 'rake'
require_relative 'app/controllers/app_controller'

Rake.application.load_rakefile
Rake::Task['db:connect'].execute

run MakersBnb
