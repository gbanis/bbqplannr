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

ActiveRecord::Schema.define(version: 20141012183334) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "allergies", force: true do |t|
    t.string "name"
  end

  create_table "allergyassociations", force: true do |t|
    t.integer "allergy_id"
    t.integer "rsvp_id"
  end

  add_index "allergyassociations", ["allergy_id"], name: "index_allergyassociations_on_allergy_id", using: :btree
  add_index "allergyassociations", ["rsvp_id"], name: "index_allergyassociations_on_rsvp_id", using: :btree

  create_table "bringitemassociations", force: true do |t|
    t.integer "bringitem_id"
    t.integer "rsvp_id"
  end

  add_index "bringitemassociations", ["bringitem_id"], name: "index_bringitemassociations_on_bringitem_id", using: :btree
  add_index "bringitemassociations", ["rsvp_id"], name: "index_bringitemassociations_on_rsvp_id", using: :btree

  create_table "bringitems", force: true do |t|
    t.string  "name"
    t.integer "event_id"
  end

  add_index "bringitems", ["event_id"], name: "index_bringitems_on_event_id", using: :btree

  create_table "events", force: true do |t|
    t.string   "name"
    t.text     "location"
    t.datetime "start_time"
    t.datetime "end_time"
    t.text     "description"
    t.integer  "user_id"
  end

  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "mealassociations", force: true do |t|
    t.integer "meal_id"
    t.integer "rsvp_id"
  end

  add_index "mealassociations", ["meal_id"], name: "index_mealassociations_on_meal_id", using: :btree
  add_index "mealassociations", ["rsvp_id"], name: "index_mealassociations_on_rsvp_id", using: :btree

  create_table "meals", force: true do |t|
    t.string  "name"
    t.integer "event_id"
  end

  add_index "meals", ["event_id"], name: "index_meals_on_event_id", using: :btree

  create_table "rsvps", force: true do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rsvps", ["event_id"], name: "index_rsvps_on_event_id", using: :btree
  add_index "rsvps", ["user_id"], name: "index_rsvps_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string "name"
    t.string "email"
  end

end
