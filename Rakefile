require 'rake'

namespace :db do
  task :connect do
    if ENV['ENVIRONMENT'] == 'test'
      DatabaseConnection.setup(dbname: 'bnb_test')
      puts '=== connected to test database ==='
    else
      DatabaseConnection.setup(dbname: 'bnb')
      puts '=== connected to development database ==='
    end
  end

  task :clean do
    connection = PG.connect(dbname: 'bnb_test')
    connection.exec("TRUNCATE users, spaces RESTART IDENTITY;")
  end
end
