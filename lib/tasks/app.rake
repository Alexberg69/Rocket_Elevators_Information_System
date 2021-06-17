require 'pg'
con = PG::Connection.open(user: 'bromedy', dbname:'bromedy')
namespace :app do
  desc "Create the FactElevator Table"
  task factelevator: :environment do

    con.exec('DROP TABLE IF EXISTS FactElevator')
    con.exec('CREATE TABLE FactElevator(
      serialNumber INT,
      date_of_commissioning DATE,
      buildingID INT,
      customerID INT,
      building_city VARCHAR) ;')
    end

  task feseed: :environment do
    con.exec("TRUNCATE TABLE FactElevator RESTART IDENTITY;")
    Elevator.all.each do |e|
    con.exec("INSERT INTO FactElevator (serialNumber, date_of_commissioning, buildingID, customerID, building_city) VALUES (#{e.serial_number}, #{e.date_of_commissioning}, #{e.column.battery.building.id}, #{e.column.battery.building.customer.id}, #{e.column.battery.building.address_of_the_building.city});")
    end
  end
  desc "Create the DimCustomers Table"
  task dimcustomers: :environment do

    con.exec('DROP TABLE IF EXISTS DimCustomers')
    con.exec('CREATE TABLE DimCustomers(
      creation_date DATE,
      company_name VARCHAR,
      full_name_of_the_company_main_contact VARCHAR,
      email_of_the_company_main_contact VARCHAR,
      nbElevators INT,
      customers_city VARCHAR) ;')
  end
  # task dimseed: :environment do
  #   con.exec("TRUNCATE TABLE DimCustomers RESTART IDENTITY;")
  #   Customer.all.each do |c|
  #   con.exec("INSERT INTO DimCustomers (creation_date, company_name, full_name_of_the_company_main_contact, email_of_the_company_main_contact, nbElevators, customers_city)
  #   VALUES (#{c.customers_creation_date}, #{c.compagny_name}, #{c.full_name_of_the_company_contact}, #{c.email_of_the_company_contact}, #{c.building}, #{c.company_headquarters_address.city});")
  #   end
  # end

end

# FactElevator question command.. maybe
#   con.exec("SELECT buildingid , customerid , COUNT(*) AS nbElevatorPerCust
#   FROM factelevator
#   GROUP BY 1,2 ;")
