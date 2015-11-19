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

ActiveRecord::Schema.define(version: 20151119185125) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "eats", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.string   "address"
    t.string   "phone"
    t.string   "website"
    t.string   "hours"
    t.string   "location"
    t.string   "neighborhood"
    t.text     "menu"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "profile_image_id"
    t.float    "latitude"
    t.float    "longitude"
    t.float    "mon_happy_start"
    t.float    "mon_happy_end"
    t.float    "tues_happy_start"
    t.float    "tues_happy_end"
    t.float    "wed_happy_start"
    t.float    "wed_happy_end"
    t.float    "thur_happy_start"
    t.float    "thur_happy_end"
    t.float    "fri_happy_start"
    t.float    "fri_happy_end"
    t.float    "sat_happy_start"
    t.float    "sat_happy_end"
    t.float    "sun_happy_start"
    t.float    "sun_happy_end"
    t.float    "mon_open"
    t.float    "mon_close"
    t.float    "tues_open"
    t.float    "tues_close"
    t.float    "wed_open"
    t.float    "wed_close"
    t.float    "thur_open"
    t.float    "thur_close"
    t.float    "fri_open"
    t.float    "fri_close"
    t.float    "sat_open"
    t.float    "sat_close"
    t.float    "sun_open"
    t.float    "sun_close"
    t.string   "instagram_location_id"
    t.float    "average_rating"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "eat_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: :cascade do |t|
    t.string   "title"
    t.string   "profile_image_id"
    t.integer  "eat_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "caption"
    t.integer  "user_id"
  end

  create_table "refile_attachments", force: :cascade do |t|
    t.string "namespace", null: false
  end

  add_index "refile_attachments", ["namespace"], name: "index_refile_attachments_on_namespace", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "rating"
    t.integer  "user_id"
    t.integer  "eat_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",                            null: false
    t.string   "encrypted_password",     default: "",                            null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,                             null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                                     null: false
    t.datetime "updated_at",                                                     null: false
    t.boolean  "admin",                  default: false
    t.string   "profile_image_id"
    t.string   "user_name"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address",                default: "Powell's Books, Portland OR"
    t.float    "distance_to_travel"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
