require 'rake'
require_relative 'makers_bnb'

Rake.application.load_rakefile
Rake::Task['db:connect'].execute

run MakersBnb
