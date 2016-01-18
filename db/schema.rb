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

ActiveRecord::Schema.define(version: 20160118154653) do

  create_table "alienigena_poders", force: true do |t|
    t.integer  "alien_id"
    t.string   "power"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "alienigena_poders", ["alien_id"], name: "index_alienigena_poders_on_alien_id"

  create_table "alienigenas", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "planetum_id"
  end

  add_index "alienigenas", ["planetum_id"], name: "index_alienigenas_on_planetum_id"

  create_table "planeta", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "poders", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
