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

ActiveRecord::Schema.define(version: 20160218181723) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "days", force: :cascade do |t|
    t.text     "am"
    t.text     "pm"
    t.string   "lunch"
    t.string   "dinner"
    t.integer  "itinerary_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "breakfast"
  end

  add_index "days", ["itinerary_id"], name: "index_days_on_itinerary_id", using: :btree

  create_table "extras", force: :cascade do |t|
    t.text     "shopping"
    t.text     "drinking"
    t.text     "sleeping"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "itinerary_id"
  end

  add_index "extras", ["itinerary_id"], name: "index_extras_on_itinerary_id", using: :btree

  create_table "itineraries", force: :cascade do |t|
    t.string   "city"
    t.string   "state"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "itineraries", ["user_id"], name: "index_itineraries_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "f_name"
    t.string   "l_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "days", "itineraries"
  add_foreign_key "extras", "itineraries"
  add_foreign_key "itineraries", "users"
end
