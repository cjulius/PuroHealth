# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140325210724) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: true do |t|
    t.string   "subdomain"
    t.integer  "owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "appointments", force: true do |t|
    t.integer  "user_id"
    t.integer  "room_id"
    t.integer  "provider_id"
    t.datetime "admitted"
    t.datetime "discharge"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "appointments", ["provider_id"], name: "index_appointments_on_provider_id", using: :btree
  add_index "appointments", ["room_id"], name: "index_appointments_on_room_id", using: :btree
  add_index "appointments", ["user_id"], name: "index_appointments_on_user_id", using: :btree

  create_table "patient_file_items", force: true do |t|
    t.integer  "user_id"
    t.integer  "fileitemtype_id"
    t.text     "notes"
    t.integer  "p_c_p_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "patient_file_items", ["fileitemtype_id"], name: "index_patient_file_items_on_fileitemtype_id", using: :btree
  add_index "patient_file_items", ["p_c_p_id"], name: "index_patient_file_items_on_p_c_p_id", using: :btree
  add_index "patient_file_items", ["user_id"], name: "index_patient_file_items_on_user_id", using: :btree

  create_table "pcps", force: true do |t|
    t.integer  "provider_id"
    t.integer  "user_id"
    t.datetime "whenstarted"
    t.datetime "whenended"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pcps", ["provider_id"], name: "index_pcps_on_provider_id", using: :btree
  add_index "pcps", ["user_id"], name: "index_pcps_on_user_id", using: :btree

  create_table "providers", force: true do |t|
    t.integer  "name_id"
    t.integer  "providertype_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "providers", ["name_id"], name: "index_providers_on_name_id", using: :btree
  add_index "providers", ["providertype_id"], name: "index_providers_on_providertype_id", using: :btree

  create_table "rooms", force: true do |t|
    t.integer  "name_id"
    t.text     "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rooms", ["name_id"], name: "index_rooms_on_name_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
