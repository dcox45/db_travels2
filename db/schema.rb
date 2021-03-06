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

ActiveRecord::Schema.define(version: 20180801205627) do

  create_table "locations", force: :cascade do |t|
    t.string   "caption"
    t.string   "region_name"
    t.string   "image_url"
    t.date     "date"
    t.string   "nearest_area"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "region_id"
    t.index ["region_id"], name: "index_locations_on_region_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string   "name"
    t.string   "image_url"
    t.date     "begDate"
    t.date     "endDate"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "description"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
