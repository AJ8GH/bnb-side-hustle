require 'pg'
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

  namespace :test do
    task :clean do
      connection = PG.connect(dbname: 'bnb_test')
      connection.exec("TRUNCATE users, spaces RESTART IDENTITY;")
    end

    task :migrate do
      connection = PG.connect(dbname: 'bnb_test')

      connection.exec(
        "CREATE TABLE users (
          id SERIAL PRIMARY KEY,
          name VARCHAR (60) NOT NULL,
          email VARCHAR (60) UNIQUE NOT NULL,
          password VARCHAR (60) NOT NULL
        );"
      )

      connection.exec(
        "CREATE TABLE spaces (
          id SERIAL PRIMARY KEY,
          name VARCHAR (60) NOT NULL,
          description VARCHAR (500),
          price INTEGER,
          host_id INTEGER REFERENCES users (id) ON DELETE CASCADE
        );"
      )
    end
  end
end
