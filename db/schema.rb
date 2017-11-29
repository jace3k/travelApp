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

ActiveRecord::Schema.define(version: 20171105144953) do

  create_table "friends", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "friends", ["user_id"], name: "index_friends_on_user_id"

  create_table "notes", force: true do |t|
    t.integer  "trip_id"
    t.integer  "user_id"
    t.string   "content"
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "notes", ["trip_id"], name: "index_notes_on_trip_id"
  add_index "notes", ["user_id"], name: "index_notes_on_user_id"

  create_table "photos", force: true do |t|
    t.integer  "place_id"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "photos", ["place_id"], name: "index_photos_on_place_id"

  create_table "place_names", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "places", force: true do |t|
    t.integer  "town_id"
    t.integer  "place_name_id"
    t.string   "name"
    t.time     "open"
    t.time     "close"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "places", ["place_name_id"], name: "index_places_on_place_name_id"
  add_index "places", ["town_id"], name: "index_places_on_town_id"

  create_table "ticket_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tickets", force: true do |t|
    t.integer  "user_id"
    t.integer  "town_id"
    t.datetime "departure"
    t.datetime "arrive"
    t.float    "price"
    t.integer  "ticket_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tickets", ["ticket_type_id"], name: "index_tickets_on_ticket_type_id"
  add_index "tickets", ["town_id"], name: "index_tickets_on_town_id"
  add_index "tickets", ["user_id"], name: "index_tickets_on_user_id"

  create_table "towns", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "coords"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trips", force: true do |t|
    t.string   "name"
    t.date     "start"
    t.date     "end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trips_places", id: false, force: true do |t|
    t.integer "trip_id"
    t.integer "place_id"
  end

  add_index "trips_places", ["place_id"], name: "index_trips_places_on_place_id"
  add_index "trips_places", ["trip_id"], name: "index_trips_places_on_trip_id"

  create_table "trips_users", id: false, force: true do |t|
    t.integer "trip_id"
    t.integer "user_id"
    t.boolean "is_admin"
  end

  add_index "trips_users", ["trip_id"], name: "index_trips_users_on_trip_id"
  add_index "trips_users", ["user_id"], name: "index_trips_users_on_user_id"

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
