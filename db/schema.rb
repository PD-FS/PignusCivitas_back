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

ActiveRecord::Schema.define(version: 2018_08_12_184901) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agent_schedules", force: :cascade do |t|
    t.bigint "schedule_id"
    t.bigint "security_agent_id"
    t.bigint "contract_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_id"], name: "index_agent_schedules_on_contract_id"
    t.index ["schedule_id"], name: "index_agent_schedules_on_schedule_id"
    t.index ["security_agent_id"], name: "index_agent_schedules_on_security_agent_id"
  end

  create_table "agent_types", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_agent_types_on_name", unique: true
    t.index ["type"], name: "index_agent_types_on_type", unique: true
  end

  create_table "alert_communities", force: :cascade do |t|
    t.bigint "alert_community_id"
    t.bigint "community_id"
    t.bigint "alert_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alert_community_id"], name: "index_alert_communities_on_alert_community_id"
    t.index ["alert_id"], name: "index_alert_communities_on_alert_id"
    t.index ["community_id"], name: "index_alert_communities_on_community_id"
  end

  create_table "alert_statuses", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_alert_statuses_on_name", unique: true
  end

  create_table "alerts", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.date "creation_date"
    t.bigint "alert_status_id"
    t.string "coordinates"
    t.string "evidence"
    t.bigint "community_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alert_status_id"], name: "index_alerts_on_alert_status_id"
    t.index ["community_id"], name: "index_alerts_on_community_id"
    t.index ["user_id"], name: "index_alerts_on_user_id"
  end

  create_table "asset_statuses", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_asset_statuses_on_name", unique: true
  end

  create_table "asset_stock_statuses", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_asset_stock_statuses_on_name", unique: true
  end

  create_table "asset_stocks", force: :cascade do |t|
    t.string "stock_name"
    t.string "manager"
    t.date "last_update"
    t.bigint "asset_stock_status_id"
    t.bigint "asset_id"
    t.bigint "community_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asset_id"], name: "index_asset_stocks_on_asset_id"
    t.index ["asset_stock_status_id"], name: "index_asset_stocks_on_asset_stock_status_id"
    t.index ["community_id"], name: "index_asset_stocks_on_community_id"
  end

  create_table "assets", force: :cascade do |t|
    t.string "name"
    t.string "notes"
    t.date "entry_date"
    t.integer "quantity"
    t.string "location"
    t.bigint "asset_status_id"
    t.string "who"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asset_status_id"], name: "index_assets_on_asset_status_id"
  end

  create_table "black_list_statuses", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_black_list_statuses_on_name", unique: true
  end

  create_table "black_lists", force: :cascade do |t|
    t.string "notes"
    t.date "date"
    t.bigint "black_list_status_id"
    t.string "facts"
    t.bigint "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["black_list_status_id"], name: "index_black_lists_on_black_list_status_id"
    t.index ["person_id"], name: "index_black_lists_on_person_id"
  end

  create_table "check_staffs", force: :cascade do |t|
    t.date "entry_date"
    t.date "exit_date"
    t.string "notes"
    t.bigint "staff_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["staff_id"], name: "index_check_staffs_on_staff_id"
  end

  create_table "check_vehicle_statuses", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_check_vehicle_statuses_on_name", unique: true
  end

  create_table "check_vehicles", force: :cascade do |t|
    t.string "entry_date"
    t.string "notes"
    t.date "exit_date"
    t.float "cost"
    t.bigint "check_vehicle_status_id"
    t.string "station"
    t.bigint "community_id"
    t.bigint "vehicle_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["check_vehicle_status_id"], name: "index_check_vehicles_on_check_vehicle_status_id"
    t.index ["community_id"], name: "index_check_vehicles_on_community_id"
    t.index ["vehicle_id"], name: "index_check_vehicles_on_vehicle_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_cities_on_country_id"
    t.index ["name"], name: "index_cities_on_name", unique: true
  end

  create_table "communities", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "admin_address"
    t.string "email"
    t.string "webSite"
    t.string "attendant"
    t.string "notes"
    t.string "postal_code"
    t.bigint "community_id"
    t.bigint "community_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["community_id"], name: "index_communities_on_community_id"
    t.index ["community_type_id"], name: "index_communities_on_community_type_id"
    t.index ["email"], name: "index_communities_on_email", unique: true
    t.index ["name"], name: "index_communities_on_name", unique: true
  end

  create_table "community_staffs", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "community_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["community_id"], name: "index_community_staffs_on_community_id"
    t.index ["staff_id"], name: "index_community_staffs_on_staff_id"
  end

  create_table "community_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_community_types_on_name", unique: true
  end

  create_table "contract_statuses", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_contract_statuses_on_name", unique: true
  end

  create_table "contracts", force: :cascade do |t|
    t.string "title"
    t.date "date"
    t.date "expiration"
    t.string "type"
    t.string "notes"
    t.string "contractor"
    t.string "hired"
    t.bigint "contract_status_id"
    t.bigint "community_id"
    t.bigint "security_company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["community_id"], name: "index_contracts_on_community_id"
    t.index ["contract_status_id"], name: "index_contracts_on_contract_status_id"
    t.index ["security_company_id"], name: "index_contracts_on_security_company_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_countries_on_name", unique: true
  end

  create_table "day_of_weeks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_day_of_weeks_on_name", unique: true
  end

  create_table "endowment_statuses", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_endowment_statuses_on_name", unique: true
  end

  create_table "endowments", force: :cascade do |t|
    t.string "stock_name"
    t.date "date"
    t.string "accountable"
    t.string "endowment_status_id"
    t.bigint "contract_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_id"], name: "index_endowments_on_contract_id"
  end

  create_table "event_statuses", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_event_statuses_on_name", unique: true
  end

  create_table "event_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_event_types_on_name", unique: true
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "notes"
    t.date "date"
    t.time "hour"
    t.string "reported_by"
    t.string "site"
    t.string "facts"
    t.bigint "event_status_id"
    t.string "location"
    t.date "end_date"
    t.time "end_hour"
    t.string "contact_name"
    t.string "contact_phone"
    t.bigint "community_id"
    t.bigint "event_type_id"
    t.bigint "security_agent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["community_id"], name: "index_events_on_community_id"
    t.index ["event_status_id"], name: "index_events_on_event_status_id"
    t.index ["event_type_id"], name: "index_events_on_event_type_id"
    t.index ["security_agent_id"], name: "index_events_on_security_agent_id"
  end

  create_table "item_statuses", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_item_statuses_on_name", unique: true
  end

  create_table "item_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_item_types_on_name", unique: true
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.bigint "item_status_id"
    t.integer "amount"
    t.string "characteristics"
    t.string "accountable"
    t.bigint "endowment_id"
    t.bigint "item_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["endowment_id"], name: "index_items_on_endowment_id"
    t.index ["item_status_id"], name: "index_items_on_item_status_id"
    t.index ["item_type_id"], name: "index_items_on_item_type_id"
  end

  create_table "layouts", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "attendant"
    t.bigint "community_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["community_id"], name: "index_layouts_on_community_id"
  end

  create_table "lost_objects", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.string "notes"
    t.string "returned_to"
    t.date "return_date"
    t.string "phone"
    t.bigint "community_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["community_id"], name: "index_lost_objects_on_community_id"
  end

  create_table "member_type_members", force: :cascade do |t|
    t.bigint "member_id"
    t.bigint "member_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_member_type_members_on_member_id"
    t.index ["member_type_id"], name: "index_member_type_members_on_member_type_id"
  end

  create_table "member_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_member_types_on_name", unique: true
  end

  create_table "members", force: :cascade do |t|
    t.string "address"
    t.string "office_address"
    t.string "notes"
    t.bigint "community_id"
    t.bigint "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["community_id"], name: "index_members_on_community_id"
    t.index ["person_id"], name: "index_members_on_person_id"
  end

  create_table "minute_books", force: :cascade do |t|
    t.date "date"
    t.string "generated_by"
    t.string "notes"
    t.string "file"
    t.bigint "community_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["community_id"], name: "index_minute_books_on_community_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "phone"
    t.string "identification"
    t.bigint "city_id"
    t.string "home_address"
    t.string "office_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_people_on_city_id"
    t.index ["identification"], name: "index_people_on_identification", unique: true
  end

  create_table "schedules", force: :cascade do |t|
    t.string "name"
    t.time "start_hour"
    t.time "end_hour"
    t.bigint "day_of_week_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["day_of_week_id"], name: "index_schedules_on_day_of_week_id"
  end

  create_table "security_agent_roles", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_security_agent_roles_on_name", unique: true
  end

  create_table "security_agents", force: :cascade do |t|
    t.bigint "security_agent_role_id"
    t.string "division"
    t.date "admission_date"
    t.bigint "security_company_id"
    t.bigint "security_agent_id"
    t.bigint "weapon_id"
    t.bigint "agent_type_id"
    t.bigint "schedule_id"
    t.bigint "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agent_type_id"], name: "index_security_agents_on_agent_type_id"
    t.index ["person_id"], name: "index_security_agents_on_person_id"
    t.index ["schedule_id"], name: "index_security_agents_on_schedule_id"
    t.index ["security_agent_id"], name: "index_security_agents_on_security_agent_id"
    t.index ["security_agent_role_id"], name: "index_security_agents_on_security_agent_role_id"
    t.index ["security_company_id"], name: "index_security_agents_on_security_company_id"
    t.index ["weapon_id"], name: "index_security_agents_on_weapon_id"
  end

  create_table "security_companies", force: :cascade do |t|
    t.string "business_name"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.string "identification"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_name"], name: "index_security_companies_on_business_name", unique: true
    t.index ["email"], name: "index_security_companies_on_email", unique: true
    t.index ["identification"], name: "index_security_companies_on_identification", unique: true
  end

  create_table "staff_jobs", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.date "admission_date"
    t.string "notes"
    t.string "address"
    t.bigint "staff_id"
    t.bigint "staff_job_id"
    t.bigint "community_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["community_id"], name: "index_staffs_on_community_id"
    t.index ["staff_id"], name: "index_staffs_on_staff_id"
    t.index ["staff_job_id"], name: "index_staffs_on_staff_job_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.date "last_login"
    t.string "email"
    t.bigint "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["person_id"], name: "index_users_on_person_id"
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  create_table "vehicle_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "plate_number"
    t.string "colour"
    t.string "year"
    t.string "brand"
    t.string "model"
    t.string "engine_number"
    t.integer "engine_size"
    t.bigint "vehicle_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plate_number"], name: "index_vehicles_on_plate_number", unique: true
    t.index ["vehicle_type_id"], name: "index_vehicles_on_vehicle_type_id"
  end

  create_table "visitors", force: :cascade do |t|
    t.date "checkin_date"
    t.date "checkout_date"
    t.string "notes"
    t.string "destination"
    t.bigint "vehicle_id"
    t.bigint "community_id"
    t.bigint "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["community_id"], name: "index_visitors_on_community_id"
    t.index ["person_id"], name: "index_visitors_on_person_id"
    t.index ["vehicle_id"], name: "index_visitors_on_vehicle_id"
  end

  create_table "weapon_locations", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "contact"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_weapon_locations_on_name", unique: true
  end

  create_table "weapon_statuses", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_weapon_statuses_on_name", unique: true
  end

  create_table "weapon_types", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_weapon_types_on_name", unique: true
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.bigint "weapon_status_id"
    t.string "notes"
    t.bigint "weapon_type_id"
    t.bigint "weapon_location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["weapon_location_id"], name: "index_weapons_on_weapon_location_id"
    t.index ["weapon_status_id"], name: "index_weapons_on_weapon_status_id"
    t.index ["weapon_type_id"], name: "index_weapons_on_weapon_type_id"
  end

  add_foreign_key "agent_schedules", "contracts"
  add_foreign_key "agent_schedules", "schedules"
  add_foreign_key "agent_schedules", "security_agents"
  add_foreign_key "alert_communities", "alert_communities"
  add_foreign_key "alert_communities", "alerts"
  add_foreign_key "alert_communities", "communities"
  add_foreign_key "alerts", "alert_statuses"
  add_foreign_key "alerts", "communities"
  add_foreign_key "alerts", "users"
  add_foreign_key "asset_stocks", "asset_stock_statuses"
  add_foreign_key "asset_stocks", "assets"
  add_foreign_key "asset_stocks", "communities"
  add_foreign_key "assets", "asset_statuses"
  add_foreign_key "black_lists", "black_list_statuses"
  add_foreign_key "black_lists", "people"
  add_foreign_key "check_staffs", "staffs"
  add_foreign_key "check_vehicles", "check_vehicle_statuses"
  add_foreign_key "check_vehicles", "communities"
  add_foreign_key "check_vehicles", "vehicles"
  add_foreign_key "cities", "countries"
  add_foreign_key "communities", "communities"
  add_foreign_key "communities", "community_types"
  add_foreign_key "community_staffs", "communities"
  add_foreign_key "community_staffs", "staffs"
  add_foreign_key "contracts", "communities"
  add_foreign_key "contracts", "contract_statuses"
  add_foreign_key "contracts", "security_companies"
  add_foreign_key "endowments", "contracts"
  add_foreign_key "events", "communities"
  add_foreign_key "events", "event_statuses"
  add_foreign_key "events", "event_types"
  add_foreign_key "events", "security_agents"
  add_foreign_key "items", "endowments"
  add_foreign_key "items", "item_statuses"
  add_foreign_key "items", "item_types"
  add_foreign_key "layouts", "communities"
  add_foreign_key "lost_objects", "communities"
  add_foreign_key "member_type_members", "member_types"
  add_foreign_key "member_type_members", "members"
  add_foreign_key "members", "communities"
  add_foreign_key "members", "people"
  add_foreign_key "minute_books", "communities"
  add_foreign_key "people", "cities"
  add_foreign_key "schedules", "day_of_weeks"
  add_foreign_key "security_agents", "agent_types"
  add_foreign_key "security_agents", "people"
  add_foreign_key "security_agents", "schedules"
  add_foreign_key "security_agents", "security_agent_roles"
  add_foreign_key "security_agents", "security_agents"
  add_foreign_key "security_agents", "security_companies"
  add_foreign_key "security_agents", "weapons"
  add_foreign_key "staffs", "communities"
  add_foreign_key "staffs", "staff_jobs"
  add_foreign_key "staffs", "staffs"
  add_foreign_key "users", "people"
  add_foreign_key "vehicles", "vehicle_types"
  add_foreign_key "visitors", "communities"
  add_foreign_key "visitors", "people"
  add_foreign_key "visitors", "vehicles"
  add_foreign_key "weapons", "weapon_locations"
  add_foreign_key "weapons", "weapon_statuses"
  add_foreign_key "weapons", "weapon_types"
end
