require 'pg'
# con = PG::Connection.open(user: 'bromedy', dbname:'bromedy')
namespace :sp_app do
  desc "Create FactContact table"
  task factcontact: :environment do
    # conn = PG::Connection.open(user: 'swtangel88', dbname: 'swtangel88')
    con.exec('DROP TABLE IF EXISTS factcontact')
    con.exec("CREATE TABLE factcontact(
      contactId INT,
      creationDate VARCHAR,
      companyName TEXT, 
      email TEXT,
      projectName TEXT
      );")
  end

  desc "Seed Factcontact Table"
  task factcontact1: :environment do
    Lead.all.each do |l|
    con.exec("INSERT INTO factcontact (contactId, creationDate, companyName, email, projectName) VALUES (#{l.id}, '#{l.created_at}', '#{l.company_name}', '#{l.email}', '#{l.project_name}');")
    end

  end

end
