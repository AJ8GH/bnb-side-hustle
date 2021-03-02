require 'coveralls'
Coveralls.wear!

ENV['ENVIRONMENT'] = 'test'
ENV['RACK_ENV']    = 'test'

require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'rake'
require_relative 'database_helper'
require_relative '../makers_bnb'

Capybara.app = MakersBnb

Rake.application.load_rakefile

RSpec.configure do |config|
  config.before(:suite) { Rake::Task['db:connect'].execute }
  config.before(:each)  { Rake::Task['db:test:clean'].execute }
end
