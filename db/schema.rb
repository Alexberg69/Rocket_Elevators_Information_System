# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_14_154711) do

  create_table "Customers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "Customers_Creation_Date"
    t.string "Compagny_Name"
    t.string "Full_Name_of_the_company_contact"
    t.string "Company_contact_phone"
    t.string "Email_of_the_company_contact"
    t.string "Company_Description"
    t.string "Full_Name_of_Service_Technical_Authority"
    t.string "Technical_Authority_Phone_for_Service"
    t.string "Technical_Manager_Email_for_Service"
  end

  create_table "address", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Type_of_address"
    t.string "Status"
    t.string "Entity"
    t.string "Number_and_street"
    t.string "Suite_or_appartment"
    t.string "City"
    t.string "Postal_code"
    t.string "Country"
    t.string "Notes"
  end

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_employees_on_user_id"
  end

  create_table "quotes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "product_line"
    t.decimal "number_of_appartement", precision: 10
    t.decimal "number_of_floor", precision: 10
    t.decimal "number_of_basement", precision: 10
    t.decimal "number_of_companies", precision: 10
    t.decimal "number_of_parking_spots", precision: 10
    t.decimal "number_of_elevators", precision: 10
    t.decimal "number_of_corporations", precision: 10
    t.decimal "maximum_occupancy", precision: 10
    t.decimal "business_hours", precision: 10
    t.string "unit_price_of_each_elevator"
    t.string "total_price_of_elevators"
    t.string "installation_fees"
    t.string "final_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "employees", "users"
end
