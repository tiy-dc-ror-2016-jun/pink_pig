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

ActiveRecord::Schema.define(version: 20160817132452) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.integer  "person_id"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.string   "country"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "companies", force: :cascade do |t|
    t.boolean  "distributor"
    t.string   "name"
    t.string   "url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "conversations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "person_id"
    t.integer  "company_id"
    t.string   "medium"
    t.text     "notes"
    t.date     "follow_up_on"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "conversations", ["company_id"], name: "index_conversations_on_company_id", using: :btree
  add_index "conversations", ["person_id"], name: "index_conversations_on_person_id", using: :btree
  add_index "conversations", ["user_id"], name: "index_conversations_on_user_id", using: :btree

  create_table "emails", force: :cascade do |t|
    t.integer  "person_id"
    t.string   "email"
    t.string   "email_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "media", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "title"
    t.string   "full_name"
    t.integer  "company_id"
    t.text     "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "notes"
  end

  create_table "phone_numbers", force: :cascade do |t|
    t.string   "digits"
    t.string   "phone_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "phoneable_id"
    t.string   "phoneable_type"
  end

  create_table "quotes", force: :cascade do |t|
    t.text     "quote"
    t.string   "author"
    t.date     "showed_on"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.boolean  "currently_being_used"
    t.boolean  "used_before"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "role"
    t.string   "name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
