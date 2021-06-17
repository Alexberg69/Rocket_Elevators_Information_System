namespace :sp_app do
  desc "Create FactContact table"
  task factcontact1: :environment do
    require 'pg'

    conn = PG::Connection.open(user: 'swtangel88', dbname: 'swtangel88')
    conn.exec('DROP TABLE IF EXISTS factcontact')
    conn.exec('CREATE TABLE factcontact(
      contactId INT,
      creationDate TEXT,
      companyName TEXT, 
      email TEXT,
      projectName TEXT
      )
      ')
  end

  desc "TODO"
  task factcontact2: :environment do
  end

end
