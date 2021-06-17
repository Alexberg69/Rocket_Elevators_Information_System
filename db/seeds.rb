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

# generate 20 users
#(22..122).each do |id|
    #User.create!(
# each user is assigned an id from 1-20
        #id: id, 
        #email: Faker::Internet.email,
# issue each user the same password
        #password: "password", 
        #password_confirmation: "password",
# a user can have only one of these roles
    #)
#end

# generate 20 users
# (22..122).each do |id|
#     Customer.create!(
#     #each customer is assigned an id from 23-123
#         id: id,
#         user_id: rand(22..122),
#         company_headquarters_address_id: rand(23..123),
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

# (23..123).each do |id|
#     Building.create!(
#     #each customer is assigned an id from 23-123
#         id: id,
#         customer_id: rand(23..123),
#         address_of_the_building_id: rand(125..247) ,
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

# (23..123).each do |id|
#     BuildingDetail.create!(
#     #each customer is assigned an id from 23-123
#         id: id,
#         building_id: rand(23..123),
#         information_key:
#         value:
#         created_at: Faker::Date.between(from: '2018-01-01', to: '2020-12-31'),
#         updated_at: Faker::Date.between(from: '2018-01-01', to: '2020-12-31')

#     )
# end

(23..123).each do |id|
    Battery.create!(
    #each customer is assigned an id from 23-123
        id: id,
        building_id: rand(23..123),
        employee_id: rand(1..21),
        status: "Active",
        date_of_commissioning: Faker::Date.between(from: '2018-01-01', to: '2020-12-31'),
        date_of_last_inspection: Faker::Date.between(from: '2018-01-01', to: '2020-12-31'),
        certificate_of_operations: Faker::Name.name,
        information: Faker::PhoneNumber.phone_number,
        notes: Faker::Internet.email,
        type = "#{types.sample(1).first}"

    )
end

types [
    ["residential"],
    ["commercial"], 
    ["corporate"], 
    ["hybrid"]
]
# addresses_list = [
#     [ "Home", "active", "Customer", "1066 Rue Thierry", nil, "Montreal", "H8N 2Y6", "Canada", nil],
#     [ "Business", "active", "Building", "3267 Rue Evelyn", nil, "Montreal", "H4G 1N8", "Canada", nil],
#     [ "Home", "active", "Customer", "8891 Rue Ghislaine", nil, "Montreal", "H8R 2C4", "Canada", nil],
#     [ "Business", "active", "Building", "8526 Rue Lemieux", nil, "Montreal", "H8N 2B6", "Canada", nil],
#     [ "Shipping", "active", "Customer", "2255 Rue Saint Mathieu", nil, "Montreal", "H3H 2J7", "Canada", "Go in back door please"],
#     [ "Home", "active", "Customer", "7676 Rue Centrale", nil, "Montreal", "H8P 1L5", "Canada", nil],
#     [ "Billing", "active", "Building", "1258 Avenue Laurier Est", nil, "Montreal", "H2J 1H1", "Canada", nil],
#     [ "Home", "active", "Customer", "8860 Boulevard Saint-Michel", nil, "Montreal", "H1Z 3G4", "Canada", nil],
#     [ "Business", "active", "Building", "3666 Rue Jeanne-Mance", nil, "Montreal", "H2X 2K5", "Canada", nil],
#     [ "Business", "active", "Building", "866 Avenue Duluth E", nil, "Montreal", "H2L 1B4", "Canada", nil],
#     [ "Business", "active", "Building", "110 Avenue Windsor", nil, "Montreal", "H8R 1P7", "Canada", nil],
#     [ "Home", "active", "Customer", "2365 Rue Léger", nil, "Montreal", "H8N 2V7", "Canada", nil],
#     [ "Business", "active", "Building", "7503 Rue St Denis", nil, "Montreal", "H2R 2E7", "Canada", nil],
#     [ "Business", "active", "Building", "251 Av Percival Montreal Ouest ", nil, "Montreal", "H4X 1T8", "Canada", nil],
#     [ "Shipping", "active", "Customer", "7766 George Street", nil, "Montreal", "H8P 1E1", "Canada", nil],
#     [ "Business", "active", "Building", "11727 Rue Notre Dame E", nil, "Montreal", "H1B 2X8", "Canada", nil],
#     [ "Home", "active", "Customer", "3708 Rue St Hubert", nil, "Montreal", "H2L 4A2", "Canada", nil],
#     [ "Business", "active", "Building", "800 Rue Gagne", nil, "Montreal", "H8P 3W3", "Canada", nil],
#     [ "Billing", "active", "Building", "4430 Ste Catherine Street O", nil, "Montreal", "H3Z 3E4", "Canada", nil],
#     [ "Business", "active", "Building", "5930 Rue Hurteau", nil, "Montreal", "H4E 2Y2", "Canada", nil],
#     [ "Home", "active", "Customer", "717 Charron Street", nil, "Montreal", "H8P 3T8", "Canada", nil],
#     [ "Business", "active", "Building", "2630 St Germain Street", nil, "Montreal", "H1W 2V3", "Canada", nil],
#     [ "Business", "active", "Building", "6730 44 Av Montreal", nil, "Montreal", "H1T 2P2", "Canada", nil],
#     [ "Business", "active", "Building", "1940 Jolicoeur Street", nil, "Montreal", "H4E 4M2", "Canada", nil],
#     [ "Home", "active", "Customer", "16 Kenaston Av Mont Royal", nil, "Montreal", "H3R 1L8", "Canada", nil],
#     [ "Business", "active", "Building", "5240 Randall Av Montreal", nil, "Montreal", "H4V 2V3", "Canada", nil],
#     [ "Business", "active", "Building", "3555 Edouard-Montpetit", nil, "Montreal", "H3T 1K7", "Canada", nil],
#     [ "Home", "active", "Customer", "7299 de l'Elysee", nil, "Montreal", "H1S 2W1", "Canada", nil],
#     [ "Business", "active", "Building", "12225 Av de Saint-Castin", nil, "Montreal", "H3M 2L6", "Canada", nil],
#     [ "Billing", "active", "Building", "391 Rue de la Congrégation", nil, "Montreal", "H3K 2H8", "Canada", nil],

#     [ "Business", "active", "Building", "1350 Golden Line Rd Almonte", nil, "Ottawa", "K0A 1A0", "Canada", nil],
#     [ "Business", "active", "Building", "170 Lees Ave Ottawa ", nil, "Ottawa", "K1S 5G5", "Canada", nil],
#     [ "Home", "active", "Customer", "RR2 Almonte ON", nil, "Ottawa", "K0A 1A0", "Canada", nil],
#     [ "Business", "active", "Building", "641 Bathgate", "1914", "Ottawa", "K1K 3Y3", "Canada", nil],
#     [ "Business", "active", "Building", "43 Aylmer Ave Ottawa", nil, "Ottawa", "K1S 5R4", "Canada", nil],
#     [ "Home", "active", "Customer", "43 Aylmer Ave Ottawa", nil, "Ottawa", "K1S 5R4", "Canada", nil],
#     [ "Shipping", "active", "Customer", "84 Pentland Pl Kanata", nil, "Ottawa", "K2K 1V8", "Canada", nil],
#     [ "Billing", "active", "Building", "8 Birchview Rd Nepean", nil, "Ottawa", "K2G 3G4", "Canada", nil],
#     [ "Business", "active", "Building", "2382 Monroe Ave Ottawa", nil, "Ottawa", "K2C 1L2", "Canada", nil],
#     [ "Business", "active", "Building", "1311 Morley Blvd Ottawa", nil, "Ottawa", "K2C 1R1", "Canada", nil],
#     [ "Business", "active", "Building", "2117 Rushton Rd Ottawa ON", nil, "Ottawa", "K2A 1N6", "Canada", nil],
#     [ "Business", "active", "Building", "1465 Baseline Rd Ottawa", nil, "Ottawa", "K2C 3L9", "Canada", nil],
#     [ "Home", "active", "Customer", "455 Dawson Ave Ottawa", nil, "Ottawa", "K1Z 5V6", "Canada", nil],
#     [ "Business", "active", "Building", "886 Denison Cres Ottawa", nil, "Ottawa", "K2A 2N5", "Canada", nil],
#     [ "Billing", "active", "Building", "83 Reid Ave Ottawa", nil, "Ottawa", "K1Y 1T1", "Canada", nil],
#     [ "Business", "active", "Building", "647 Westview Ave Ottawa", nil, "Ottawa", "K1Z 6E2", "Canada", nil],
#     [ "Home", "active", "Customer", "335 Cooper", "113", "Ottawa", "K2P 0G6", "Canada", nil],
#     [ "Business", "active", "Building", "40 Country Lane E Kanata", nil, "Ottawa", "K2L 1J1", "Canada", nil],
#     [ "Business", "active", "Building", "1266 Upton Rd Manotick", nil, "Ottawa", "K4M 1B3", "Canada", nil],
#     [ "Home", "active", "Customer", "3360 Barnsdale Rd Manotick", nil, "Ottawa", "K4M 1B2", "Canada", nil],

#     [ "Business", "active", "Building", "500 Kingston Rd ", nil, "Toronto", "M4L 1V3", "Canada", nil],
#     [ "Billing", "active", "Building", "315 St Germain Ave Toronto", nil, "Toronto", "M5M 1W4", "Canada", nil],
#     [ "Home", "active", "Customer", "234 Willow Ave Toronto", nil, "Toronto", "M4E 3K7", "Canada", nil],
#     [ "Business", "active", "Building", "26 Goodwood Park Cres East York", nil, "Toronto", "M4C 2G5", "Canada", nil],
#     [ "Business", "active", "Building", "48 St Clair Ave W", nil, "Toronto", "M4V 2Z2", "Canada", nil],
#     [ "Business", "active", "Building", "1974 Queen St E", nil, "Toronto", "M4L 1H8", "Canada", nil],
#     [ "Home", "active", "Customer", "42 Balsam Ave", nil, "Toronto", "M4E 3B4", "Canada", nil],
#     [ "Business", "active", "Building", "258 Waverley Rd", nil, "Toronto", "M4L 3T6", "Canada", nil],
#     [ "Business", "active", "Building", "101 Hillingdon Ave ", nil, "Toronto", "M4C 3H9", "Canada", nil],
#     [ "Billing", "active", "Building", "24 Hammersmith Ave", nil, "Toronto", "M4E 2W4", "Canada", nil],
#     [ "Business", "active", "Building", "102 Elmer Ave", nil, "Toronto", "M4L 3R8", "Canada", nil],
#     [ "Billing", "active", "Building", "304 Berkeley St", nil, "Toronto", "M5A 2X5", "Canada", nil],
#     [ "Home", "active", "Customer", "8 Oliver Mews", nil, "Toronto", "M4L 3E4", "Canada", nil],
#     [ "Business", "active", "Building", "300 Silver Birch Ave", nil, "Toronto", "M4E 3L5", "Canada", nil],
#     [ "Business", "active", "Building", "48 Norwood Rd", nil, "Toronto", "M4E 2S2", "Canada", nil],
#     [ "Business", "active", "Building", "717 Broadview Ave", nil, "Toronto", "M4K 2P5", "Canada", nil],
#     [ "Home", "active", "Customer", "1210 Don Mills Rd North York", nil, "Toronto", "M3B 3N9", "Canada", nil],
#     [ "Business", "active", "Building", "65 Harbour Sq", nil, "Toronto", "M5J 2L4", "Canada", nil],
#     [ "Business", "active", "Building", "127 Scarborough Rd", nil, "Toronto", "M4E 3M4", "Canada", nil],

#     [ "Business", "active", "Building", "83 Citdl Mdw Grove NW", nil, "Calgary", "T3K 1B6", "Canada", nil],
#     [ "Business", "active", "Building", "6912 Lefroy Crt SW", nil, "Calgary", "T3E 6G9", "Canada", nil],
#     [ "Billing", "active", "Building", "4913 16 Ave SE", nil, "Calgary", "T2A 0P1", "Canada", nil],
#     [ "Shipping", "active", "Customer", "39 Hillgrove Cres SW", nil, "Calgary", "T2V 3K8", "Canada", nil],
#     [ "Business", "active", "Building", "1127 8 St SE", nil, "Calgary", "T2G 2Z6", "Canada", nil],
#     [ "Business", "active", "Building", "3626 7 St SW", nil, "Calgary", "T2T 2Y1", "Canada", nil],
#     [ "Business", "active", "Building", "272 Huntington Close NE", nil, "Calgary", "T2K 5B3", "Canada", nil],
#     [ "Home", "active", "Customer", "15 Bermuda Rd NW", nil, "Calgary", "T3K 1G5", "Canada", nil],
#     [ "Business", "active", "Building", "343 Penswood Way SE", nil, "Calgary", "T2A 4T4", "Canada", nil],
#     [ "Business", "active", "Building", "475 Canterbury Dr SW", nil, "Calgary", "T2W 1J4", "Canada", nil],
#     [ "Business", "active", "Building", "1828 62 Ave SE", nil, "Calgary", "T2C 0B5", "Canada", nil],
#     [ "Billing", "active", "Building", "12 Stradbrooke Rise SW", nil, "Calgary", "T3H 1T9", "Canada", nil],
#     [ "Business", "active", "Building", "12 Oaklawn Pl SW", nil, "Calgary", "T2V 3Z1", "Canada", nil],
#     [ "Home", "active", "Customer", "308 Canterbury Pl SW", nil, "Calgary", "T2W 2B5", "Canada", nil],
#     [ "Business", "active", "Building", "368 Norseman Rd NW", nil, "Calgary", "T2K 5M5", "Canada", nil],
#     [ "Business", "active", "Building", "40 Parkridge View SE", nil, "Calgary", "T2J 7G6", "Canada", nil],
#     [ "Business", "active", "Building", "231 Theodore Pl NW", nil, "Calgary", "T2K 5L7", "Canada", nil],
#     [ "Home", "active", "Customer", "3131 63 Ave SW SW", nil, "Calgary", "T3E 6N4", "Canada", nil],
#     [ "Business", "active", "Building", "16 Inverness Cove SE", nil, "Calgary", "T2Z 3L2", "Canada", nil],

#     [ "Business", "active", "Building", "181 Delisle", nil, "Laval", "H7A 2V2", "Canada", nil],
#     [ "Business", "active", "Building", "4624 Rue du Pirée", nil, "Laval", "H7K 3K7", "Canada", nil],
#     [ "Billing", "active", "Building", "1073 40E Av Laval", nil, "Laval", "H7R 4X4", "Canada", nil],
#     [ "Business", "active", "Building", "1731 Rue Le Royer", nil, "Laval", "H7M 2R6", "Canada", nil],
#     [ "Home", "active", "Customer", "1797 Rue de Brême", nil, "Laval", "H7M 1Z8", "Canada", nil],
#     [ "Business", "active", "Building", "264 Av 7E", nil, "Laval", "H7N 4J8", "Canada", nil],
#     [ "Business", "active", "Building", "1940 Rue Émmanuel", nil, "Laval", "H7T 1J5", "Canada", nil],
#     [ "Business", "active", "Building", "1050 Av 100E", nil, "Laval", "H7W 4A3", "Canada", nil],
#     [ "Home", "active", "Customer", "1539 Rue Trépanier", nil, "Laval", "H7W 3G5", "Canada", nil],
#     [ "Business", "active", "Building", "3145 Rue 5E", nil, "Laval", "H7V 1L9", "Canada", nil],
#     [ "Business", "active", "Building", "729 Rue Luc", nil, "Laval", "H7X 2Z8", "Canada", nil],
#     [ "Business", "active", "Building", "1085 Rue Marois", nil, "Laval", "H7Y 1M4", "Canada", nil],
#     [ "Business", "active", "Building", "446 Rue Foster", nil, "Laval", "H7P 3G4", "Canada", nil],
#     [ "Business", "active", "Building", "1500 Montée Monette", nil, "Laval", "H7M 5C9", "Canada", nil],
#     [ "Home", "active", "Customer", "4280 Rue Bertin", nil, "Laval", "H7W 0H5", "Canada", nil],
#     [ "Business", "active", "Building", "530 Odette Oligny Laval-des-Rapides", nil, "Laval", "H7N 5Z5", "Canada", nil],
#     [ "Business", "active", "Building", "5200 80E Rue Laval", nil, "Laval", "H7R 5T6", "Canada", nil],
#     [ "Billing", "active", "Building", "944 Ch Du Bord De L'Eau", nil, "Laval", "H7Y 1A1", "Canada", nil],
#     [ "Home", "active", "Customer", "2860 Rue Brunet", nil, "Laval", "H7L 1P9", "Canada", nil],
#     [ "Business", "active", "Building", "20 Ch Du Mistral", nil, "Laval", "H7Y 1S1", "Canada", nil],

#     [ "Billing", "active", "Building", "111 Rue Grégoire", nil, "Gatineau", "J8L 2Z6", "Canada", nil],
#     [ "Home", "active", "Customer", "363 Rue des Pins", nil, "Gatineau", "J8L 2K8", "Canada", nil],
#     [ "Business", "active", "Building", "936 Rue Notre-Dame", nil, "Gatineau", "J8P 1N9", "Canada", nil],
#     [ "Business", "active", "Building", "269 Rue Elm", nil, "Gatineau", "J8P 5L6", "Canada", nil],
#     [ "Shipping", "active", "Customer", "287 ch du 6E-rang Val-des-Monts ", nil, "Gatineau", "J8N 7R4", "Canada", nil],
#     [ "Business", "active", "Building", "130 Rue de Pélissier", nil, "Gatineau", "J8P 7P3", "Canada", nil],
#     [ "Billing", "active", "Building", "61 Rue du Muscatel", nil, "Gatineau", "J9H 5R7", "Canada", nil],
#     [ "Business", "active", "Building", "221 Rue des Draveurs", nil, "Gatineau", "J9J 1T4", "Canada", nil],
#     [ "Home", "active", "Customer", "60 Cormier", nil, "Gatineau", "J9H 6B4", "Canada", nil],
#     [ "Business", "active", "Building", "22 Rue Symmes", nil, "Gatineau", "J9H 3J4", "Canada", nil],
#     [ "Business", "active", "Building", "17 imp des Regates", nil, "Gatineau", "J9H 5C4", "Canada", nil],
#     [ "Business", "active", "Building", "51 ch Cochrane", nil, "Gatineau", "J9H 2G5", "Canada", nil],
#     [ "Billing", "active", "Building", "428 Rue Parker", nil, "Gatineau", "J8T 8R7", "Canada", nil],
#     [ "Home", "active", "Customer", "505 Bdde la Gappe", nil, "Gatineau", "J8T 8R7", "Canada", nil],
#     [ "Business", "active", "Building", "4468 Wellington", "204", "Gatineau", "H4G 1W5", "Canada", nil]
# ]

# addresses_list.each do |type_of_address, status, entity, number_and_street, suite_or_appartment, city, postal_code, country, notes|

#     Address.create!(
#         type_of_address: type_of_address, 
#         status: status, 
#         entity: entity, 
#         number_and_street: number_and_street,
#         suite_or_appartment: suite_or_appartment, 
#         city: city,
#         postal_code: postal_code,
#         country: country,
#         notes: notes
#     )
#     puts "Addresses done!"
# end

#users_list = [
    #[ "nicolas.genest@codeboxx.biz", "123456", nil, nil, nil, DateTime.now, DateTime.now, 1, "Genest", "Nicolas", "CEO" ],
    #[ "nadya.fortier@codeboxx.biz", "2345678", nil, nil, nil, DateTime.now, DateTime.now, 2, "Nadya", "Fortier", "Director"],
    #[ "martin.chantal@codeboxx.biz", "345678", nil, nil, nil, DateTime.now, DateTime.now, 3, "Chantal", "Martin", "Assistant Director" ],
    #[ "mathieu.houde@codeboxx.biz", "456788", nil, nil, nil, DateTime.now, DateTime.now, 4, "Houde", "Mathieu", "Captain" ],
    #[ "patrick.thibault@codeboxx.biz", "564789", nil, nil, nil, DateTime.now, DateTime.now, 5, "Thibault", "Patrick", "Captain" ],
    #[ "david.boutin@codeboxx.biz", "664789", nil, nil, nil, DateTime.now, DateTime.now, 6, "Boutin", "David", "Engineer" ],
    #[ "mathieu.lortie@codeboxx.biz", "764789", nil, nil, nil, DateTime.now, DateTime.now, 7, "Lortie", "Mathieu", "Engineer" ],
    #[ "thomas.carrier@codeboxx.biz", "8564789", nil, nil, nil, DateTime.now, DateTime.now, 8, "Carrier", "Thomas", "Engineer" ],
    #[ "serge.savoie@codeboxx.biz", "964789", nil, nil, nil, DateTime.now, DateTime.now, 9, "Savoie", "Serge", "Engineer" ],
    #[ "francis.patry-jessop@codeboxx.biz", "574789", nil, nil, nil, DateTime.now, DateTime.now, 10, "Patry-Jessop", "Francis", "Engineer" ],
    #[ "mathieu.lefrancois@codeboxx.biz", "584789", nil, nil, nil, DateTime.now, DateTime.now, 11, "Lefrancois", "Mathieu", "Engineer" ],
    #[ "david.larochelle@codeboxx.biz", "594789", nil, nil, nil, DateTime.now, DateTime.now, 12, "Larochelle", "David", "Engineer" ],
    #[ "nicolas.pineault@codeboxx.biz", "565789", nil, nil, nil, DateTime.now, DateTime.now, 13, "Pineault", "Nicolas", "Engineer" ],
    #[ "david.amyot@codeboxx.biz", "564689", nil, nil, nil, DateTime.now, DateTime.now, 14, "Amyot", "David", "Engineer" ],
    #[ "remi.gagnon@codeboxx.biz", "564889", nil, nil, nil, DateTime.now, DateTime.now, 15, "Gagnon", "Remi", "Engineer" ],
    #[ "timothy.wever@codeboxx.biz", "569989", nil, nil, nil, DateTime.now, DateTime.now, 16, "Wever", "Timothy", "Developer" ],
    #[ "kiril.kleinerman@codeboxx.biz", "664789", nil, nil, nil, DateTime.now, DateTime.now, 17, "Kleinerman", "Kiril", "Developer" ],
    #[ "emmanuela.derilus@codeboxx.biz", "564799", nil, nil, nil, DateTime.now, DateTime.now, 18, "Derilus", "Emmanuela", "Developer" ],
    #[ "abdul.akeeb@codebozz.biz", "564289", nil, nil, nil, DateTime.now, DateTime.now, 19, "Akeeb", "Abdul", "Developer" ],
    #[ "krista.sheely@codeboxx.biz", "564989", nil, nil, nil, DateTime.now, DateTime.now, 20, "Sheely", "Krista", "Developer" ],
    #[ "jonathan.murray@codeboxx.biz", "564989", nil, nil, nil, DateTime.now, DateTime.now, 21, "Murray", "Jonathan", "Developer" ]
#]


#users_list.each do |email, password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, user_id, last_name, first_name, title|

    #User.create!(
        #email: email, 
        #password: password, 
        #reset_password_token: reset_password_token, 
        #reset_password_sent_at: reset_password_sent_at,
        #remember_created_at: remember_created_at, 
        #created_at: created_at,
        #updated_at: updated_at
    #)
#    puts "Users done!"

    #Employee.create!(
        #last_name: last_name, 
        #first_name: first_name, 
        #title: title, 
        #created_at: created_at, 
        #updated_at: updated_at,
        #user_id: user_id
    #)
 #   puts "Employees done!"

#end

