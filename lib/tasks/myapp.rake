##Just an example of a command, don't run it

# namespace :myapp do
#   desc "Creates the Database in Postgres"
#   task createDatabase: :environment do
#     require "pg"

#     con = PG::Connection.open(user: 'bromedy')
#     con.exec('DROP DATABASE IF EXISTS AlexBerg')
#     con.exec('CREATE DATABASE AlexBerg')
#   end

# end
