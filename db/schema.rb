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

ActiveRecord::Schema.define(version: 2021_06_15_015625) do

  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "type_of_address"
    t.string "status"
    t.string "entity"
    t.string "number_and_street"
    t.string "suite_or_appartment"
    t.string "city"
    t.string "postal_code"
    t.string "country"
    t.string "notes"
  end

  create_table "customers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "customers_creation_date"
    t.string "compagny_name"
    t.string "full_name_of_the_company_contact"
    t.string "company_contact_phone"
    t.string "email_of_the_company_contact"
    t.string "company_description"
    t.string "full_name_of_service_technical_authority"
    t.string "technical_authority_phone_for_service"
    t.string "technical_manager_email_for_service"
    t.bigint "user_id"
    t.bigint "company_headquarters_address_id"
    t.index ["company_headquarters_address_id"], name: "index_customers_on_company_headquarters_address_id"
    t.index ["user_id"], name: "index_customers_on_user_id"
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

  add_foreign_key "customers", "addresses", column: "company_headquarters_address_id"
  add_foreign_key "customers", "users"
  add_foreign_key "employees", "users"
end
