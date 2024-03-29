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

ActiveRecord::Schema.define(version: 20160724022605) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string   "event_name",       limit: 64, null: false
    t.string   "event_type",       limit: 10
    t.date     "event_date",                  null: false
    t.string   "venue",                       null: false
    t.string   "event_start_time", limit: 8,  null: false
    t.string   "event_end_time",   limit: 8,  null: false
    t.string   "description"
    t.string   "instructions"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "its_id",          limit: 8,  null: false
    t.string   "first_name",      limit: 25, null: false
    t.string   "last_name",       limit: 50, null: false
    t.string   "email",                      null: false
    t.string   "password_digest"
    t.string   "user_type",       limit: 1,  null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

end
