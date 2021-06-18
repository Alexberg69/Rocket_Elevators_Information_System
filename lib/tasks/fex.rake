require 'pg'
# con = PG::Connection.open(user: 'bromedy', dbname:'bromedy')
namespace :fex do
  # con = PG::Connection.open(host: '127.0.0.1', port: 5432, user: 'postgres', dbname: 'fexon', password: 'mynewpassword')

  desc "Create the FactQuote table"

  task quotetable: :environment do
    con.exec('DROP TABLE IF EXISTS factquote')
    con.exec('CREATE TABLE factquote(
    quote_id INT PRIMARY KEY, 
    creation VARCHAR,
    company_name TEXT,   
    email TEXT,
    nbelevator INT) ;')
  end
 
    desc "data transfer"
  
    task quoteseed: :environment do
      Quote.all.each do |q|
        con.exec("INSERT INTO factquote (quote_id, creation, company_name, email, nbelevator) VALUES (#{q.id}, '#{q.created_at}', '#{q.company_name}', '#{q.email}', #{q.number_of_elevators})")
    end
  end
end