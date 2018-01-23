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

ActiveRecord::Schema.define(version: 20180123173859) do

  create_table "notifies", force: true do |t|
    t.integer  "user_id"
    t.integer  "trip_id"
    t.string   "message"
    t.integer  "notify_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "notifies", ["trip_id"], name: "index_notifies_on_trip_id"
  add_index "notifies", ["user_id"], name: "index_notifies_on_user_id"

  create_table "places", force: true do |t|
    t.string   "name"
    t.integer  "type_id"
    t.integer  "town_id"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address"
    t.float    "lat"
    t.float    "lon"
  end

  add_index "places", ["town_id"], name: "index_places_on_town_id"
  add_index "places", ["type_id"], name: "index_places_on_type_id"

  create_table "posts", force: true do |t|
    t.integer  "trip_id"
    t.integer  "user_id"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["trip_id"], name: "index_posts_on_trip_id"
  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "reviews", force: true do |t|
    t.integer  "place_id"
    t.integer  "user_id"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["place_id"], name: "index_reviews_on_place_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "towns", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_url"
  end

  create_table "trips", force: true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "town_id"
    t.integer  "user_id"
  end

  add_index "trips", ["town_id"], name: "index_trips_on_town_id"
  add_index "trips", ["user_id"], name: "index_trips_on_user_id"

  create_table "trips_places", force: true do |t|
    t.integer  "trip_id"
    t.integer  "place_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trips_places", ["place_id"], name: "index_trips_places_on_place_id"
  add_index "trips_places", ["trip_id"], name: "index_trips_places_on_trip_id"

  create_table "types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "token"
    t.string   "device_id"
  end

  add_index "users", ["token"], name: "index_users_on_token"
  add_index "users", ["username"], name: "index_users_on_username", unique: true

  create_table "users_trips", force: true do |t|
    t.integer  "trip_id"
    t.integer  "user_id"
    t.boolean  "user_confirmation"
    t.boolean  "is_admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users_trips", ["trip_id"], name: "index_users_trips_on_trip_id"
  add_index "users_trips", ["user_id"], name: "index_users_trips_on_user_id"

end
