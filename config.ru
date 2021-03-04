require 'rake'
require_relative 'app/app'

Rake.application.load_rakefile
Rake::Task['db:connect'].execute

run MakersBnb
