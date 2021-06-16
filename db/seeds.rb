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
#(23..123).each do |id|
    #Customer.create!(
# each user is assigned an id from 1-20
        #id: id,
        #user_id: rand(23..123),
        #company_headquarters_address: rand(23..123),
        #customers_creation_date: Faker::Date.between(from: '2018-01-01', to: '2020-12-31'),
        #compagny_name: Faker::Name.name,
        #full_name_of_the_company_contact: Faker::Name.name,
        #company_contact_phone: Faker::Name.name,
        #email_of_the_company_contact: Faker::Internet.email,
        #company_description: Faker::Name.name,
        #full_name_of_service_technical_authority: Faker::Name.name,
        #technical_authority_phone_for_service: Faker::Name.name,
        #technical_manager_email_for_service: Faker::Internet.email

    #)
#end

addresses_list = [
    [ "Billing", "je sais pas ?", "Customer", "1066 rue Thierry", nil, "Montreal", "H8N 2Y6", "Canada", "Amazing service"],
    [ "Business", "je sais pas ?", "Building", "4468 Wellington", "204", "Montreal", "H4G 1W5", "Canada", "Amazing service"],
    [ "Business", "je sais pas ?", "Building", "4468 Wellington", "204", "Montreal", "H4G 1W5", "Canada", "Amazing service"],
    [ "Business", "je sais pas ?", "Building", "4468 Wellington", "204", "Montreal", "H4G 1W5", "Canada", "Amazing service"],
    [ "Business", "je sais pas ?", "Building", "4468 Wellington", "204", "Montreal", "H4G 1W5", "Canada", "Amazing service"],
    [ "Business", "je sais pas ?", "Building", "4468 Wellington", "204", "Montreal", "H4G 1W5", "Canada", "Amazing service"],
    [ "Business", "je sais pas ?", "Building", "4468 Wellington", "204", "Montreal", "H4G 1W5", "Canada", "Amazing service"],
    [ "Business", "je sais pas ?", "Building", "4468 Wellington", "204", "Montreal", "H4G 1W5", "Canada", "Amazing service"],
    [ "Business", "je sais pas ?", "Building", "4468 Wellington", "204", "Montreal", "H4G 1W5", "Canada", "Amazing service"],
    [ "Business", "je sais pas ?", "Building", "4468 Wellington", "204", "Montreal", "H4G 1W5", "Canada", "Amazing service"],
    [ "Business", "je sais pas ?", "Building", "4468 Wellington", "204", "Montreal", "H4G 1W5", "Canada", "Amazing service"],
    [ "Business", "je sais pas ?", "Building", "4468 Wellington", "204", "Montreal", "H4G 1W5", "Canada", "Amazing service"],
    [ "Business", "je sais pas ?", "Building", "4468 Wellington", "204", "Montreal", "H4G 1W5", "Canada", "Amazing service"]
]

addresses_list.each do |type_of_address, status, entity, number_and_street, suite_or_appartment, city, postal_code, country, notes|

    Address.create!(
        type_of_address: type_of_address, 
        status: status, 
        entity: entity, 
        number_and_street: number_and_street,
        suite_or_appartment: suite_or_appartment, 
        city: city,
        postal_code: postal_code
        country: country,
        notes: notes
    )
    puts "Addresses done!"

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
]


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

