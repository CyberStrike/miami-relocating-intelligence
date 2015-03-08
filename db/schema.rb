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

ActiveRecord::Schema.define(version: 20150308030730) do

  create_table "job_location_stats", force: :cascade do |t|
    t.integer  "job_id"
    t.integer  "location_id"
    t.integer  "available"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "job_location_stats", ["job_id", "location_id"], name: "index_job_location_stats_on_job_id_and_location_id", unique: true
  add_index "job_location_stats", ["job_id"], name: "index_job_location_stats_on_job_id"
  add_index "job_location_stats", ["location_id"], name: "index_job_location_stats_on_location_id"

  create_table "job_locations", force: :cascade do |t|
    t.integer  "job_id"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "job_locations", ["job_id", "location_id"], name: "index_job_locations_on_job_id_and_location_id", unique: true
  add_index "job_locations", ["job_id"], name: "index_job_locations_on_job_id"
  add_index "job_locations", ["location_id"], name: "index_job_locations_on_location_id"

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "city"
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "locations", ["city", "state"], name: "index_locations_on_city_and_state", unique: true

end
