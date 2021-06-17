# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#use employee model - to create CreateEmployees
# rake db:seed
require 'faker'

require 'json'

file = File.read('real_addresses.json')

data_hash = JSON.parse(file)


# ##generate 20 users
# (1..99).each do |id|
#     User.create!(
# # each user is assigned an id from 1-20
#         id: id, 
#         email: Faker::Internet.email,
# # issue each user the same password
#         password: "password", 
#         password_confirmation: "password",
# # a user can have only one of these roles
#     )
# end

# users_list.each do |email, password, remember_created_at, created_at, updated_at|
#         User.create!(
#         email: email, 
#         password: password, 
#         remember_created_at: remember_created_at, 
#         created_at: created_at,
#         updated_at: updated_at
#     )
# end



# address_type = ["Billing", "Shipping", "Home", "Business"]
# address_status = ["Active", "Inactive"]
# address_entity = ["Building", "Customer"]
# user_id_array = [*1..99]
# customer_id_array = [*1..99]
# company_headquarters_address_array = [*1..99]
# address_of_the_building_array = [*1..99]
# building_id_array = [*1..99]
# employee_id_array = [*1..22]

# data_hash['addresses'].each do |address|
#      Address.create(type_of_address: address_type[rand(4)], status: address_status[rand(2)], entity: address_entity[rand(2)], number_and_street: address['address1'], suite_or_appartment: address['address2'], city: address['city'], postal_code: address['postalCode'], country: address['state'], notes: nil)
# end
    # Lead.create!(
    # #each customer is assigned an id from 23-123
    #     contact_name: Faker::Name.name,
    #     company_name: Faker::Name.name,
    #     email: Faker::Internet.email,
    #     phone_number: Faker::PhoneNumber.phone_number,
    #     project_name: Faker::Name.name,
    #     project_description: Faker::Lorem.word,
    #     department_in_charge_of_the_elevators: Faker::Job.field,
    #     message: Faker::Lorem.paragraph,
    #     binary_file: Faker::File.mime_type
    # )
# (1..99).each do |customer|
#     Customer.create!(
#     #each customer is assigned an id from 23-123
#         user_id: user_id_array.delete(user_id_array.sample),
#         company_headquarters_address_id: company_headquarters_address_array.delete(company_headquarters_address_array.sample),
#         customers_creation_date: Faker::Date.between(from: '2018-01-01', to: '2020-12-31'),
#         compagny_name: Faker::Name.name,
#         full_name_of_the_company_contact: Faker::Name.name,
#         company_contact_phone: Faker::PhoneNumber.phone_number,
#         email_of_the_company_contact: Faker::Internet.email,
#         company_description: Faker::Name.name,
#         full_name_of_service_technical_authority: Faker::Name.name,
#         technical_authority_phone_for_service: Faker::PhoneNumber.phone_number,
#         technical_manager_email_for_service: Faker::Internet.email

#     )
# end

# (1..99).each do |building|
#     Building.create!(
#     #each customer is assigned an id from 23-123
#         customer_id: customer_id_array.delete(customer_id_array.sample),
#         address_of_the_building_id: address_of_the_building_array.delete(address_of_the_building_array.sample),
#         full_name_of_the_building_administrator: Faker::Name.name,
#         phone_number_of_the_building_administrator: Faker::PhoneNumber.phone_number,
#         email_of_the_administrator: Faker::Internet.email,
#         full_name_of_the_technical_contact_for_the_building: Faker::Name.name,
#         technical_contact_phone_for_the_building: Faker::PhoneNumber.phone_number,
#         technical_contact_email_for_the_building: Faker::Internet.email,
#         created_at: Faker::Date.between(from: '2018-01-01', to: '2020-12-31'),
#         updated_at: Faker::Date.between(from: '2018-01-01', to: '2020-12-31')

#     )
# end

# random_type = ["residential", "commercial", "corporate", "hybrid"]
# # # info_key = ["Type, Construction Year, Last Renovation Year, Number of elevator in place"]
# # # random_values = [random_type.sample, Faker::Date.between(from: '2018-01-01', to: '2020-12-31'), Faker::Date.between(from: '2018-01-01', to: '2020-12-31'), Faker::Number.between(from: 1, to: 40)]
# random_status = ["Active", "Inactive"]


# (1..99).each do |buildingdetail|
#     BuildingDetail.create!(
#     #each customer is assigned an id from 23-12
#         building_id: building_id_array.delete(building_id_array.sample),
#         information_key: info_key,
#         value: [random_type.sample, Faker::Date.between(from: '2018-01-01', to: '2020-12-31'), Faker::Date.between(from: '2018-01-01', to: '2020-12-31'), Faker::Number.between(from: 1, to: 40)]
        
#     )
# end

# (1..99).each do |battery|
#     Battery.create!(
#     #each customer is assigned an id from 23-123
#         building_id: building_id_array.delete(building_id_array.sample),
#         employee_id: rand(1..21),
#         battery_type: random_type.sample,
#         status: random_status.sample,
#         date_of_commissioning: Faker::Date.between(from: '2018-01-01', to: '2020-12-31'),
#         date_of_last_inspection: Faker::Date.between(from: '2018-01-01', to: '2020-12-31'),
#         certificate_of_operations: Faker::Name.name,
#         information: Faker::Lorem.word,
#         notes: Faker::Lorem.word
        

#     )
# end

# (1..198).each do |column|
#     Column.create!(
#     #each customer is assigned an id from 23-123
#         battery_id: rand(1..99),
#         column_type: random_type.sample,
#         number_of_floors_served: Faker::Number.between(from: 20, to: 100),
#         status: random_status.sample,
#         information: Faker::Lorem.word,
#         notes: Faker::Lorem.word
#     )
# end

# (1..1000).each do |elevator|
#     Elevator.create!(
#     #each customer is assigned an id from 23-123
#         column_id: rand(1..198),
#         elevator_type: random_type.sample,
#         serial_number: Faker::Number.between(from: 15262888, to: 25269889),
#         status: random_status.sample,
#         date_of_commissioning: Faker::Date.between(from: '2018-01-01', to: '2020-12-31'),
#         date_of_last_inspection: Faker::Date.between(from: '2018-01-01', to: '2020-12-31'),
#         certificate_of_inspection: Faker::Date.between(from: '2020-01-01', to: '2020-12-31'),
#         information: Faker::Lorem.word,
#         notes: Faker::Lorem.word
#     )
# end

# users_list = [
#     [ "nicolas.genest@codeboxx.biz", "123456", nil, nil, nil, DateTime.now, DateTime.now, 1, "Genest", "Nicolas", "CEO" ],
#     [ "nadya.fortier@codeboxx.biz", "2345678", nil, nil, nil, DateTime.now, DateTime.now, 2, "Nadya", "Fortier", "Director"],
#     [ "martin.chantal@codeboxx.biz", "345678", nil, nil, nil, DateTime.now, DateTime.now, 3, "Chantal", "Martin", "Assistant Director" ],
#     [ "mathieu.houde@codeboxx.biz", "456788", nil, nil, nil, DateTime.now, DateTime.now, 4, "Houde", "Mathieu", "Captain" ],
#     [ "patrick.thibault@codeboxx.biz", "564789", nil, nil, nil, DateTime.now, DateTime.now, 5, "Thibault", "Patrick", "Captain" ],
#     [ "david.boutin@codeboxx.biz", "664789", nil, nil, nil, DateTime.now, DateTime.now, 6, "Boutin", "David", "Engineer" ],
#     [ "mathieu.lortie@codeboxx.biz", "764789", nil, nil, nil, DateTime.now, DateTime.now, 7, "Lortie", "Mathieu", "Engineer" ],
#     [ "thomas.carrier@codeboxx.biz", "8564789", nil, nil, nil, DateTime.now, DateTime.now, 8, "Carrier", "Thomas", "Engineer" ],
#     [ "serge.savoie@codeboxx.biz", "964789", nil, nil, nil, DateTime.now, DateTime.now, 9, "Savoie", "Serge", "Engineer" ],
#     [ "francis.patry-jessop@codeboxx.biz", "574789", nil, nil, nil, DateTime.now, DateTime.now, 10, "Patry-Jessop", "Francis", "Engineer" ],
#     [ "mathieu.lefrancois@codeboxx.biz", "584789", nil, nil, nil, DateTime.now, DateTime.now, 11, "Lefrancois", "Mathieu", "Engineer" ],
#     [ "david.larochelle@codeboxx.biz", "594789", nil, nil, nil, DateTime.now, DateTime.now, 12, "Larochelle", "David", "Engineer" ],
#     [ "nicolas.pineault@codeboxx.biz", "565789", nil, nil, nil, DateTime.now, DateTime.now, 13, "Pineault", "Nicolas", "Engineer" ],
#     [ "david.amyot@codeboxx.biz", "564689", nil, nil, nil, DateTime.now, DateTime.now, 14, "Amyot", "David", "Engineer" ],
#     [ "remi.gagnon@codeboxx.biz", "564889", nil, nil, nil, DateTime.now, DateTime.now, 15, "Gagnon", "Remi", "Engineer" ],
#     [ "timothy.wever@codeboxx.biz", "569989", nil, nil, nil, DateTime.now, DateTime.now, 16, "Wever", "Timothy", "Developer" ],
#     [ "kiril.kleinerman@codeboxx.biz", "664789", nil, nil, nil, DateTime.now, DateTime.now, 17, "Kleinerman", "Kiril", "Developer" ],
#     [ "emmanuela.derilus@codeboxx.biz", "564799", nil, nil, nil, DateTime.now, DateTime.now, 18, "Derilus", "Emmanuela", "Developer" ],
#     [ "abdul.akeeb@codebozz.biz", "564289", nil, nil, nil, DateTime.now, DateTime.now, 19, "Akeeb", "Abdul", "Developer" ],
#     [ "krista.sheely@codeboxx.biz", "564989", nil, nil, nil, DateTime.now, DateTime.now, 20, "Sheely", "Krista", "Developer" ],
#     [ "jonathan.murray@codeboxx.biz", "564989", nil, nil, nil, DateTime.now, DateTime.now, 21, "Murray", "Jonathan", "Developer" ]
# ]


# users_list.each do |email, password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, user_id, last_name, first_name, title|

#     User.create!(
#         email: email, 
#         password: password, 
#         reset_password_token: reset_password_token, 
#         reset_password_sent_at: reset_password_sent_at,
#         remember_created_at: remember_created_at, 
#         created_at: created_at,
#         updated_at: updated_at
#     )
#    puts "Users done!"

#     Employee.create!(
#         last_name: last_name, 
#         first_name: first_name, 
#         title: title, 
#         created_at: created_at, 
#         updated_at: updated_at,
#         user_id: user_id
#     )
#    puts "Employees done!"

# end