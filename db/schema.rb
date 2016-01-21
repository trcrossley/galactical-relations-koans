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

ActiveRecord::Schema.define(version: 20160121123442) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "asteroids", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "asteroids_planets", id: false, force: :cascade do |t|
    t.integer "asteroid_id", null: false
    t.integer "planet_id",   null: false
  end

  create_table "astronauts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "moons", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "planet_id"
  end

  add_index "moons", ["planet_id"], name: "index_moons_on_planet_id", using: :btree

  create_table "planets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "sun_id"
  end

  add_index "planets", ["sun_id"], name: "index_planets_on_sun_id", using: :btree

  create_table "spaceships", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suns", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "planet_id"
  end

  add_index "suns", ["planet_id"], name: "index_suns_on_planet_id", using: :btree

  add_foreign_key "moons", "planets"
  add_foreign_key "planets", "suns"
  add_foreign_key "suns", "planets"
end
