class Address < ActiveRecord::Migration[5.2]
  def change
    create_table :address do |t|
     t.string :Type_of_address
     t.string :Status
     t.string :Entity
     t.string :Number_and_street
     t.string :Suite_or_appartment
     t.string :City
     t.string :Postal_code
     t.string :Country
     t.string :Notes
     
    end
  end
end
