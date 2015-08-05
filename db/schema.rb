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

ActiveRecord::Schema.define(version: 20150805201017) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cigarettes", force: :cascade do |t|
    t.float   "cost",        null: false
    t.integer "location_id", null: false
    t.integer "rank"
    t.string  "change"
    t.integer "year_id",     null: false
    t.float   "health_cost"
  end

  create_table "dollars", force: :cascade do |t|
    t.integer "spent"
    t.integer "earned"
    t.integer "saved"
    t.integer "user_id", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "state", null: false
  end

  create_table "net_worths", force: :cascade do |t|
    t.integer "income"
    t.integer "expenses"
    t.integer "user_id",  null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.float    "cost",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "smokes", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "decision"
    t.string   "reason"
    t.string   "emotion"
    t.string   "method"
  end

  create_table "streaks", force: :cascade do |t|
    t.integer  "current_streak", default: 0
    t.integer  "longest_streak", default: 0
    t.integer  "current_slump",  default: 0
    t.integer  "longest_slump",  default: 0
    t.integer  "user_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "user_cigarettes", force: :cascade do |t|
    t.integer  "user_id",      null: false
    t.integer  "cigarette_id", null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "user_cigarettes", ["user_id", "cigarette_id"], name: "index_user_cigarettes_on_user_id_and_cigarette_id", unique: true, using: :btree

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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "location_id",                         null: false
    t.integer  "net_worth_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "years", force: :cascade do |t|
    t.string "year", null: false
  end

end
