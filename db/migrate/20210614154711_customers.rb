class Customers < ActiveRecord::Migration[5.2]
  def change
    create_table :Customers do |t|
      t.datetime :Customers_Creation_Date
      t.string :Compagny_Name
      t.string :Full_Name_of_the_company_contact
      t.string :Company_contact_phone
      t.string :Email_of_the_company_contact
      t.string :Company_Description
      t.string :Full_Name_of_Service_Technical_Authority
      t.string :Technical_Authority_Phone_for_Service
      t.string :Technical_Manager_Email_for_Service
    end
  end
end
