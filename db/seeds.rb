# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#use employee model - to create CreateEmployees
# rake db:seed

users_list = [
    [ "nicolas.genest@codeboxx.biz", "123456", nil, nil, nil, DateTime.now, DateTime.now, 1, "Genest", "Nicolas", "CEO" ],
    [ "nadya.fortier@codeboxx.biz", "2345678", nil, nil, nil, DateTime.now, DateTime.now, 2, "Nadya", "Fortier", "Director"],
    [ "martin.chantal@codeboxx.biz", "345678", nil, nil, nil, DateTime.now, DateTime.now, 3, "Chantal", "Martin", "Assistant Director" ],
    [ "mathieu.houde@codeboxx.biz", "456788", nil, nil, nil, DateTime.now, DateTime.now, 4, "Houde", "Mathieu", "Captain" ],
    [ "patrick.thibault@codeboxx.biz", "564789", nil, nil, nil, DateTime.now, DateTime.now, 5, "Thibault", "Patrick", "Captain" ],
    [ "david.boutin@codeboxx.biz", "664789", nil, nil, nil, DateTime.now, DateTime.now, 6, "Boutin", "David", "Engineer" ],
    [ "mathieu.lortie@codeboxx.biz", "764789", nil, nil, nil, DateTime.now, DateTime.now, 7, "Lortie", "Mathieu", "Engineer" ],
    [ "thomas.carrier@codeboxx.biz", "8564789", nil, nil, nil, DateTime.now, DateTime.now, 8, "Carrier", "Thomas", "Engineer" ],
    [ "serge.savoie@codeboxx.biz", "964789", nil, nil, nil, DateTime.now, DateTime.now, 9, "Savoie", "Serge", "Engineer" ],
    [ "francis.patry-jessop@codeboxx.biz", "574789", nil, nil, nil, DateTime.now, DateTime.now, 10, "Patry-Jessop", "Francis", "Engineer" ],
    [ "mathieu.lefrancois@codeboxx.biz", "584789", nil, nil, nil, DateTime.now, DateTime.now, 11, "Lefrancois", "Mathieu", "Engineer" ],
    [ "david.larochelle@codeboxx.biz", "594789", nil, nil, nil, DateTime.now, DateTime.now, 12, "Larochelle", "David", "Engineer" ],
    [ "nicolas.pineault@codeboxx.biz", "565789", nil, nil, nil, DateTime.now, DateTime.now, 13, "Pineault", "Nicolas", "Engineer" ],
    [ "david.amyot@codeboxx.biz", "564689", nil, nil, nil, DateTime.now, DateTime.now, 14, "Amyot", "David", "Engineer" ],
    [ "remi.gagnon@codeboxx.biz", "564889", nil, nil, nil, DateTime.now, DateTime.now, 15, "Gagnon", "Remi", "Engineer" ],
    [ "timothy.wever@codeboxx.biz", "569989", nil, nil, nil, DateTime.now, DateTime.now, 16, "Wever", "Timothy", "Developer" ],
    [ "kiril.kleinerman@codeboxx.biz", "664789", nil, nil, nil, DateTime.now, DateTime.now, 17, "Kleinerman", "Kiril", "Developer" ],
    [ "emmanuela.derilus@codeboxx.biz", "564799", nil, nil, nil, DateTime.now, DateTime.now, 18, "Derilus", "Emmanuela", "Developer" ],
    [ "abdul.akeeb@codebozz.biz", "564289", nil, nil, nil, DateTime.now, DateTime.now, 19, "Akeeb", "Abdul", "Developer" ],
    [ "krista.sheely@codeboxx.biz", "564989", nil, nil, nil, DateTime.now, DateTime.now, 20, "Sheely", "Krista", "Developer" ],
    [ "jonathan.murray@codeboxx.biz", "564989", nil, nil, nil, DateTime.now, DateTime.now, 21, "Murray", "Jonathan", "Developer" ]
]


users_list.each do |email, password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, user_id, last_name, first_name, title|

    User.create!(
        email: email, 
        password: password, 
        reset_password_token: reset_password_token, 
        reset_password_sent_at: reset_password_sent_at,
        remember_created_at: remember_created_at, 
        created_at: created_at,
        updated_at: updated_at
    )
#    puts "Users done!"

    Employee.create!(
        last_name: last_name, 
        first_name: first_name, 
        title: title, 
        created_at: created_at, 
        updated_at: updated_at,
        user_id: user_id
    )
 #   puts "Employees done!"

end

# employee_list = [
#     [ "Genest", "Nicolas", "CEO" ],
#     [ "Nadya", "Fortier", "Director",]
#     [ "Chantal", "Martin", "Assistant Director" ],
#     [ "Houde", "Mathieu", "Captain" ],
#     [ "Thibault", "Patrick", "Captain" ],
#     [ "Boutin", "David", "Engineer" ],
#     [ "Lortie", "Mathieu", "Engineer" ],
#     [ "Carrier", "Thomas", "Engineer" ],
#     [ "Savoie", "Serge", "Engineer" ],
#     [ "Patry-Jessop", "Francis", "Engineer" ],
#     [ "Lefrancois", "Mathieu", "Engineer" ],
#     [ "Larochelle", "David", "Engineer" ],
#     [ "Pineault", "Nicolas", "Engineer" ],
#     [ "Amyot", "David", "Engineer" ],
#     [ "Gagnon", "Remi", "Engineer" ],
#     [ "Wever", "Timothy", "Developer" ],
#     [ "Kleinerman", "Kiril", "Developer" ],
#     [ "Derilus", "Emmanuela", "Developer" ],
#     [ "Akeeb", "Abdul", "Developer" ],
#     [ "Sheely", "Krista", "Developer" ],
#     [ "Murray", "Jonathan", "Developer" ]
# ]

# employee_list.each do | user_idlast_name, first_name, title, email |
#     Employee.create(user_id: user_id, last_name: last_name, first_name: first_name, title: title)
    
# end

# user_list = [
#     [ 1, "nicolas.genest@codeboxx.biz" ],
#     [ 2, "nadya.fortier@codeboxx.biz" ],
#     [ 3, "martin.chantal@codeboxx.biz" ],
#     [ 4, "mathieu.houde@codeboxx.biz" ],
#     [ 5, "patrick.thibault@codeboxx.biz"]
#     [ 6, "david.boutin@codeboxx.biz" ],
#     [ 7, "mathieu.lortie@codeboxx.biz" ],
#     [ 8, "thomas.carrier@codeboxx.biz" ],
#     [ 9, "serge.savoie@codeboxx.biz" ],
#     [ 10, "francis.patry-jessop@codeboxx.biz" ],
#     [ 11, "mathieu.lefrancois@codeboxx.biz" ],
#     [ 12, "david.larochelle@codeboxx.biz" ],
#     [ 13, "nicolas.pineault@codeboxx.biz" ],
#     [ 14, "david.amyot@codeboxx.biz" ],
#     [ 15, "remi.gagnon@codeboxx.biz" ],
#     [ 16, "timothy.wever@codeboxx.biz" ],
#     [ 17, "kiril.kleinerman@codeboxx.biz" ],
#     [ 18, "emmanuela.derilus@codeboxx.biz" ],
#     [ 19, "abdul.akeeb@codebozz.biz" ],
#     [ 20, "krista.sheely@codeboxx.biz" ],
#     [ 21, "jonathan.murray@codeboxx.biz" ]
# ]

# user_list.each do | user_id, email |
#     User.create(user_id: user_id, email: email)
    
# end
