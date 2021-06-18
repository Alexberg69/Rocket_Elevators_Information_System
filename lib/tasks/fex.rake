require 'pg'

namespace :fex do
  con = PG::Connection.open(host: '127.0.0.1', port: 5432, user: 'postgres', dbname: 'fexon', password: 'mynewpassword')

  desc "Create the QuoteTable"

  task quotetable: :environment do


    con.exec('DROP DATABASE IF EXISTS QuoteTable')
    # con.exec('DROP TABLE QuoteTable')
    con.exec('CREATE TABLE QuoteTable(
    quote_id INT PRIMARY KEY, 
    creation DATE,
    company_name TEXT,   
    email TEXT,
    nbelevator INT) ;')
  end
 
    desc "data transfer"
  
    task transfer_data_to_quote_table: :environment do
      Quote.all.each do |q|
        puts("***************")
        con.exec("INSERT INTO QuoteTable (quote_id, creation, compagny_name, email, nbelevator) VALUES (#{q.id}, #{q.created_at}, #{q.company_name}, #{q.email}, #{q.number_of_elevators})")
    end
  end
end