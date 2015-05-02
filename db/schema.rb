<<<<<<< HEAD
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

ActiveRecord::Schema.define(version: 20150502161810) do

  create_table "language_interests", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "language_id"
    t.integer  "actual_level"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "language_interests", ["language_id"], name: "index_language_interests_on_language_id"
  add_index "language_interests", ["user_id"], name: "index_language_interests_on_user_id"

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "match_languages", force: :cascade do |t|
    t.integer  "match_id"
    t.integer  "language_id"
    t.integer  "teacher_id"
    t.integer  "student_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "match_languages", ["language_id"], name: "index_match_languages_on_language_id"
  add_index "match_languages", ["match_id"], name: "index_match_languages_on_match_id"

  create_table "match_users", force: :cascade do |t|
    t.integer  "match_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "match_users", ["match_id"], name: "index_match_users_on_match_id"
  add_index "match_users", ["user_id"], name: "index_match_users_on_user_id"

  create_table "matches", force: :cascade do |t|
    t.date     "from"
    t.date     "to"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "requested_by"
    t.boolean  "confirmed"
  end

  create_table "user_languages", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "language_id"
    t.integer  "level"
    t.boolean  "is_native"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "user_languages", ["language_id"], name: "index_user_languages_on_language_id"
  add_index "user_languages", ["user_id"], name: "index_user_languages_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "country"
    t.string   "state"
    t.string   "city"
    t.string   "sex"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "skype_username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
=======
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

ActiveRecord::Schema.define(version: 20150502160233) do

  create_table "language_interests", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "language_id"
    t.integer  "actual_level"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "language_interests", ["language_id"], name: "index_language_interests_on_language_id"
  add_index "language_interests", ["user_id"], name: "index_language_interests_on_user_id"

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "match_languages", force: :cascade do |t|
    t.integer  "match_id"
    t.integer  "language_id"
    t.integer  "teacher_id"
    t.integer  "student_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "match_languages", ["language_id"], name: "index_match_languages_on_language_id"
  add_index "match_languages", ["match_id"], name: "index_match_languages_on_match_id"

  create_table "match_users", force: :cascade do |t|
    t.integer  "match_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "match_users", ["match_id"], name: "index_match_users_on_match_id"
  add_index "match_users", ["user_id"], name: "index_match_users_on_user_id"

  create_table "matches", force: :cascade do |t|
    t.date     "from"
    t.date     "to"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "confirmed",  default: false
  end

  create_table "user_languages", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "language_id"
    t.integer  "level"
    t.boolean  "is_native"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "user_languages", ["language_id"], name: "index_user_languages_on_language_id"
  add_index "user_languages", ["user_id"], name: "index_user_languages_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "country"
    t.string   "state"
    t.string   "city"
    t.string   "sex"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "skype_username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
>>>>>>> 5c68dc4d320b1bf4a4545d0ec5fbec8ebf4f281f
