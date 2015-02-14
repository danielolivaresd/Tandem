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

ActiveRecord::Schema.define(version: 20150214014729) do

  create_table "language_interests", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "language_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "language_interests", ["language_id"], name: "index_language_interests_on_language_id"
  add_index "language_interests", ["user_id"], name: "index_language_interests_on_user_id"

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.integer  "offer_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "matches", ["offer_id"], name: "index_matches_on_offer_id"
  add_index "matches", ["user_id"], name: "index_matches_on_user_id"

  create_table "offers", force: :cascade do |t|
    t.integer  "user_language_id"
    t.float    "cost"
    t.integer  "sessions"
    t.string   "session_mode"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "city"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "meeting_point"
  end

  add_index "offers", ["user_language_id"], name: "index_offers_on_user_language_id"

  create_table "user_languages", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "language_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "user_languages", ["language_id"], name: "index_user_languages_on_language_id"
  add_index "user_languages", ["user_id"], name: "index_user_languages_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "name"
    t.string   "email"
    t.string   "city"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date     "birth_date"
    t.string   "gmail"
    t.string   "skype"
  end

end
