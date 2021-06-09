# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#use employee model - to create CreateEmployees

employee_list = [
    [ "Genest", "Nicolas", "CEO" ],
    [ "Chantal", "Martin", "Assistant Director " ],
    [ "Houde", "Mathieu", "Captain" ],
    [ "Thibault", "Patrick", "Captain" ],
    [ "Boutin", "David", "Engineer" ],
    [ "Lortie", "Mathieu", "Engineer" ],
    [ "Carrier", "Thomas", "Engineer" ],
    [ "Savoie", "Serge", "Engineer" ],
    [ "Patry-Jessop", "Francis", "Engineer" ],
    [ "Lefrancois", "Mathieu", "Engineer" ],
    [ "Larochelle", "David", "Engineer" ],
    [ "Pineault", "Nicolas", "Engineer" ],
    [ "Amyot", "David", "Engineer" ],
    [ "Gagnon", "Remi", "Engineer" ],
    [ "Wever", "Timothy", "Developer" ],
    [ "Kleinerman", "Kiril", "Developer" ],
    [ "Derilus", "Emmanuela", "Developer" ],
    [ "Akeeb", "Abdul", "Developer" ],
    [ "Sheely", "Krista", "Developer" ],
    [ "Murray", "Jonathan", "Developer" ]
]

employee_list.each do | last_name, first_name, title|
    Employee.create(user_id: 3, last_name: last_name, first_name: first_name, title: title)
    
end

