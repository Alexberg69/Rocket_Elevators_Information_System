namespace :myapp do
  desc "Creates the Database in Postgres"
  task createDatabase: :environment do
    require "pg"

    con = PG::Connection.open(user: 'postgres')
    con.exec('DROP DATABASE IF EXISTS AlexBerg')
    con.exec('CREATE DATABASE AlexBerg')
  end

end
